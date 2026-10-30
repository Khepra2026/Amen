/**
 * AMEN SpiriTech — FULL REMEDIATION MASTER V2
 * Version: 2.0.0
 *
 * Modes:
 *   AUDIT (default): read-only repository inspection; creates evidence reports.
 *   --run-checks: additionally runs existing package scripts (lint/typecheck/test/build)
 *                 only when explicitly requested. No package installation.
 *   --strict: exits non-zero when P0/P1 FAIL or BLOCKED findings remain.
 *
 * Safety:
 *   - Never connects to Supabase or any remote service.
 *   - Never executes SQL, DDL, DML, migrations, deployments or data mutations.
 *   - Never prints secret values. Secret findings contain path + line + category only.
 *   - Does not rewrite application files, package manifests, SEO files or translations.
 *   - Produces a remediation backlog and owner-gated action register for controlled execution.
 *
 * Run:
 *   npx tsx scripts/AMEN_FULL_REMEDIATION_MASTER_V2.ts --repo . --out reports/V744
 *   npx tsx scripts/AMEN_FULL_REMEDIATION_MASTER_V2.ts --repo . --out reports/V744 --run-checks
 *   npx tsx scripts/AMEN_FULL_REMEDIATION_MASTER_V2.ts --repo . --out reports/V744 --run-checks --strict
 */

import fs from "node:fs";
import path from "node:path";
import crypto from "node:crypto";
import { execFileSync } from "node:child_process";

type Status = "PASS" | "PARTIAL" | "FAIL" | "BLOCKED" | "NOT_VERIFIED" | "INFO";
type Severity = "P0" | "P1" | "P2" | "P3";
type Finding = {
  id: string; domain: string; severity: Severity; status: Status; title: string;
  evidence: string[]; risk: string; remediation: string[]; ownerGate?: boolean;
};
type CheckRun = { name: string; command: string; status: "PASS" | "FAIL" | "SKIPPED"; exitCode: number | null; durationMs: number; outputTail: string };
type Options = { repo: string; out: string; strict: boolean; runChecks: boolean };

const VERSION = "2.0.0";
const IGNORE = new Set([".git", "node_modules", ".next", "dist", "build", "coverage", ".vercel", ".turbo", ".cache", "vendor", "reports", ".output"]);
const EXT = new Set([".ts", ".tsx", ".js", ".jsx", ".mjs", ".cjs", ".json", ".sql", ".md", ".yml", ".yaml", ".toml", ".ps1", ".sh", ".html", ".xml"]);
const SECRET_PATTERNS: Array<[string, RegExp]> = [
  ["SUPABASE_SERVICE_ROLE", /(?:service_role|SUPABASE_SERVICE_ROLE_KEY)\s*[:=]\s*["'`][A-Za-z0-9._-]{16,}/i],
  ["PRIVATE_KEY", /-----BEGIN (?:RSA |EC |OPENSSH )?PRIVATE KEY-----/],
  ["JWT_OR_BEARER_LITERAL", /(?:Bearer\s+)[A-Za-z0-9._~-]{24,}/i],
  ["CLOUD_API_KEY", /(?:OPENAI_API_KEY|ANTHROPIC_API_KEY|OPENROUTER_API_KEY|GOOGLE_API_KEY)\s*[:=]\s*["'`][A-Za-z0-9_-]{16,}/i],
  ["DATABASE_CREDENTIAL", /(?:DATABASE_URL|POSTGRES_PASSWORD)\s*[:=]\s*["'`][^"'`\s]{12,}/i]
];

function args(argv: string[]): Options {
  const o: Options = { repo: ".", out: "reports/V744", strict: false, runChecks: false };
  for (let i = 0; i < argv.length; i++) {
    if (argv[i] === "--repo" && argv[i + 1]) o.repo = argv[++i];
    else if (argv[i] === "--out" && argv[i + 1]) o.out = argv[++i];
    else if (argv[i] === "--strict") o.strict = true;
    else if (argv[i] === "--run-checks") o.runChecks = true;
    else if (argv[i] === "--help" || argv[i] === "-h") {
      console.log("AMEN FULL REMEDIATION MASTER V2\n--repo <path> --out <path> [--run-checks] [--strict]");
      process.exit(0);
    }
  }
  o.repo = path.resolve(o.repo);
  o.out = path.resolve(o.repo, o.out);
  return o;
}
function read(p: string): string | null { try { return fs.readFileSync(p, "utf8"); } catch { return null; } }
function rel(root: string, p: string): string { return path.relative(root, p).split(path.sep).join("/"); }
function walk(root: string, max = 30000): string[] {
  const out: string[] = [], stack = [root];
  while (stack.length && out.length < max) {
    const dir = stack.pop()!;
    let entries: fs.Dirent[]; try { entries = fs.readdirSync(dir, { withFileTypes: true }); } catch { continue; }
    for (const e of entries) {
      if (e.name.startsWith(".") && ![".github", ".env.example"].includes(e.name)) {
        if (e.isDirectory() && !IGNORE.has(e.name)) stack.push(path.join(dir, e.name));
        continue;
      }
      const p = path.join(dir, e.name);
      if (e.isDirectory()) { if (!IGNORE.has(e.name)) stack.push(p); }
      else if (e.isFile() && EXT.has(path.extname(e.name).toLowerCase())) out.push(p);
      if (out.length >= max) break;
    }
  }
  return out;
}
function exec(command: string, argv: string[], cwd: string, timeout = 120000): { code: number; out: string } {
  try {
    const out = execFileSync(command, argv, { cwd, encoding: "utf8", stdio: ["ignore", "pipe", "pipe"], timeout, maxBuffer: 8 * 1024 * 1024 });
    return { code: 0, out: String(out).slice(-12000) };
  } catch (e: any) {
    const out = [e?.stdout, e?.stderr, e?.message].filter(Boolean).join("\n");
    return { code: typeof e?.status === "number" ? e.status : 1, out: String(out).slice(-12000) };
  }
}
function add(a: Finding[], id: string, domain: string, severity: Severity, status: Status, title: string, evidence: string[], risk: string, remediation: string[], ownerGate = false) {
  a.push({ id, domain, severity, status, title, evidence, risk, remediation, ownerGate });
}
function count(a: Finding[], status: Status) { return a.filter(x => x.status === status).length; }
function safeTail(s: string, n = 35) { return s.split(/\r?\n/).slice(-n).join("\n").replace(/(?:sk|rk|pk)-[A-Za-z0-9_-]{12,}/g, "[REDACTED]"); }

function main() {
  const o = args(process.argv.slice(2));
  if (!fs.existsSync(o.repo) || !fs.statSync(o.repo).isDirectory()) throw new Error(`Repository inaccessible: ${o.repo}`);
  const files = walk(o.repo);
  const findings: Finding[] = [];
  const pkgPath = path.join(o.repo, "package.json");
  const pkgText = read(pkgPath);
  let pkg: any = null; try { pkg = pkgText ? JSON.parse(pkgText) : null; } catch {}
  const scripts = pkg?.scripts ?? {};
  const git = exec("git", ["status", "--short"], o.repo, 15000);
  const branch = exec("git", ["branch", "--show-current"], o.repo, 15000);
  const commit = exec("git", ["rev-parse", "HEAD"], o.repo, 15000);

  add(findings, "REP-001", "Repository", "P0", pkg ? "PASS" : "FAIL", "Manifest package.json",
    [pkg ? "JSON valide." : "Absent ou JSON invalide."], "Un manifeste invalide empêche de reproduire les contrôles.",
    ["Réparer le JSON en conservant les dépendances et scripts existants."]);
  const hasLint = !!scripts.lint, hasType = !!(scripts.typecheck || scripts["type-check"]), hasTest = !!scripts.test, hasBuild = !!scripts.build;
  add(findings, "QA-001", "Quality Engineering", "P0", hasLint && hasType && hasTest && hasBuild ? "PASS" : "PARTIAL", "Scripts qualité et build",
    [`scripts=${Object.keys(scripts).join(", ") || "aucun"}`, `lint=${hasLint}; typecheck=${hasType}; test=${hasTest}; build=${hasBuild}`],
    "Des scripts absents ou décoratifs laissent passer des régressions.",
    ["Vérifier que chaque script exécute réellement un outil/test et retourne un code d'échec fiable.", "Ajouter lint, typecheck, test et build à la CI sans masquer les erreurs."]);
  add(findings, "GIT-001", "Change Management", "P1", git.code === 0 ? (git.out.trim() ? "PARTIAL" : "PASS") : "NOT_VERIFIED",
    "Traçabilité Git", [`branch=${branch.out.trim() || "unknown"}`, `commit=${commit.out.trim() || "unknown"}`, `workingTree=${git.code !== 0 ? "unknown" : git.out.trim() ? "dirty" : "clean"}`],
    "Les constats doivent être rattachés à un état de code reproductible.",
    ["Archiver le rapport avec le commit audité.", "Ne pas écraser les modifications locales."]);

  const docs = files.filter(p => [".md", ".mdx", ".rst", ".txt"].includes(path.extname(p).toLowerCase()));
  const tests = files.filter(p => /(^|\/)(__tests__|tests?|e2e)(\/|$)|\.(test|spec)\.(ts|tsx|js|jsx)$|playwright|vitest|jest/i.test(rel(o.repo, p)));
  const migrations = files.filter(p => /(^|\/)migrations?\//i.test(rel(o.repo, p)) && /\.sql$/i.test(p));
  const workflows = files.filter(p => rel(o.repo, p).startsWith(".github/workflows/"));
  const api = files.filter(p => /(^|\/)(api|functions|routes)\//i.test(rel(o.repo, p)) || /\/route\.(ts|js)$/.test(rel(o.repo, p)));
  const i18n = files.filter(p => /i18n|locales|translations/i.test(rel(o.repo, p)));
  const seo = files.filter(p => /(sitemap|robots|manifest|seo|metadata)/i.test(path.basename(p)));

  add(findings, "DOC-001", "Documentation", "P1", docs.length ? "PARTIAL" : "FAIL", "Inventaire documentaire",
    [`documents=${docs.length}`, `docs directories=${["docs", "documentation"].filter(x => fs.existsSync(path.join(o.repo, x))).join(", ") || "none"}`],
    "La présence de documents ne garantit ni leur actualité ni leur cohérence avec le code.",
    ["Construire un registre avec propriétaire, version, date de revue, composants couverts et commit de référence.", "Marquer explicitement les documents obsolètes au lieu de les supprimer automatiquement."]);
  const readmes = docs.filter(p => /^readme(\.|$)/i.test(path.basename(p)));
  add(findings, "DOC-002", "Documentation", "P1", readmes.length ? "PARTIAL" : "FAIL", "README et guides d'entrée",
    [`README files=${readmes.length}`, ...readmes.slice(0, 20).map(p => rel(o.repo, p))],
    "Les instructions d'installation, d'exploitation et de reprise peuvent diverger.",
    ["Vérifier les commandes contre package.json et les workflows CI.", "Documenter architecture, variables d'environnement (noms seulement), démarrage, tests, déploiement et rollback."]);
  add(findings, "QA-002", "Quality Engineering", "P0", tests.length ? "PARTIAL" : "FAIL", "Artefacts de tests",
    [`test-like files=${tests.length}`, ...tests.slice(0, 30).map(p => rel(o.repo, p))],
    "Des noms de fichiers de test ne prouvent pas l'existence d'assertions ou l'exécution des tests.",
    ["Identifier le runner réel et exécuter les tests existants.", "Ajouter des tests unitaires, intégration et E2E sur les flux critiques.", "Créer un benchmark RAG versionné avec réponses et sources attendues."]);
  add(findings, "DB-001", "Data Governance", "P1", migrations.length ? "PARTIAL" : "NOT_VERIFIED", "Historique SQL",
    [`SQL migrations=${migrations.length}`, ...migrations.slice(-20).map(p => rel(o.repo, p))],
    "Le dépôt ne prouve pas à lui seul la parité avec la base distante.",
    ["Comparer le schéma distant à l'historique des migrations via une procédure approuvée.", "Toute migration doit avoir préconditions, vérification, rollback et approbation Owner."], true);
  add(findings, "CI-001", "DevSecOps", "P1", workflows.length ? "PARTIAL" : "FAIL", "Workflows CI/CD",
    [`workflow files=${workflows.length}`, ...workflows.map(p => rel(o.repo, p))],
    "Sans pipeline de qualité, les contrôles ne sont pas systématiquement rejoués.",
    ["Exiger lint, typecheck, tests, build et contrôles de dépendances.", "Publier les rapports avec commit et durée.", "Bloquer le merge sur échec P0/P1."]);
  add(findings, "API-001", "Architecture", "P1", api.length ? "PARTIAL" : "NOT_VERIFIED", "Surfaces API et fonctions",
    [`API/function files=${api.length}`],
    "Les surfaces exposées et leurs autorisations doivent être documentées et testées.",
    ["Produire un inventaire routes/RPC/méthodes/roles.", "Tester anon, authenticated et service_role en environnement contrôlé.", "Ne jamais réouvrir des RPC en bloc."], true);
  add(findings, "I18N-001", "Internationalization", "P2", i18n.length ? "PARTIAL" : "NOT_VERIFIED", "Internationalisation",
    [`i18n files=${i18n.length}`, ...i18n.slice(0, 25).map(p => rel(o.repo, p))],
    "La présence de fichiers i18n ne prouve pas la parité de toutes les langues.",
    ["Comparer les clés à une locale de référence.", "Détecter valeurs vides, doublons, fallback silencieux et erreurs RTL.", "Tester les neuf langues annoncées sans supposer qu'elles sont complètes."]);
  add(findings, "SEO-001", "SEO", "P1", seo.length ? "PARTIAL" : "NOT_VERIFIED", "Artefacts SEO",
    [`SEO-related files=${seo.length}`, ...seo.map(p => rel(o.repo, p))],
    "Les fichiers présents ne prouvent pas que les routes publiques sont toutes indexables et cohérentes.",
    ["Comparer routes publiques, sitemap, robots, canonical, hreflang et JSON-LD.", "Détecter pages absentes du registre, titres/descriptions dupliqués entre langues et canonicals incohérents."]);

  // Secret scanner: report locations/categories only; skip generated reports and lockfiles.
  const secretHits: string[] = [];
  for (const file of files) {
    const r = rel(o.repo, file);
    if (/lock|package-lock|pnpm-lock|yarn\.lock|reports\//i.test(r)) continue;
    const text = read(file); if (text === null) continue;
    const lines = text.split(/\r?\n/);
    lines.forEach((line, idx) => {
      for (const [kind, re] of SECRET_PATTERNS) {
        if (re.test(line) && !/process\.env|Deno\.env|getenv|example|placeholder|redacted|dummy/i.test(line)) {
          secretHits.push(`${r}:${idx + 1} [${kind}]`);
          break;
        }
      }
    });
  }
  add(findings, "SEC-001", "Secrets", "P0", secretHits.length ? "FAIL" : "PASS", "Recherche de secrets à forte confiance",
    [`matches=${secretHits.length}`, ...secretHits.slice(0, 80), ...(secretHits.length > 80 ? [`${secretHits.length - 80} additional locations omitted`] : [])],
    "Un secret réel commité peut permettre un accès non autorisé. Le scanner peut encore produire des faux positifs.",
    ["Faire une revue manuelle de chaque emplacement sans copier les valeurs dans les tickets.", "Si un secret réel est confirmé, le révoquer/faire tourner puis vérifier l'historique Git.", "Ne pas traiter les noms de variables d'environnement comme des secrets."]);
  const corsHits: string[] = [], definerHits: string[] = [], injectionHits: string[] = [];
  for (const file of files) {
    const r = rel(o.repo, file), t = read(file); if (!t) continue;
    if (/Access-Control-Allow-Origin["']?\s*[:=]\s*["']\*|allow-origin["']?\s*:\s*["']\*/i.test(t)) corsHits.push(r);
    if (/SECURITY\s+DEFINER/i.test(t)) definerHits.push(r);
    if (/dangerouslySetInnerHTML|innerHTML\s*=|\.html\(/i.test(t)) injectionHits.push(r);
  }
  add(findings, "SEC-002", "Application Security", "P1", corsHits.length || injectionHits.length ? "PARTIAL" : "NOT_VERIFIED", "Surfaces CORS et sinks HTML",
    [`wildcard CORS files=${corsHits.length}: ${corsHits.slice(0, 30).join(", ")}`, `HTML sink files=${injectionHits.length}: ${injectionHits.slice(0, 30).join(", ")}`],
    "Un motif statique ne suffit pas à établir une vulnérabilité ; le contexte et les contrôles d'entrée doivent être examinés.",
    ["Examiner les origines CORS autorisées, credentials et préflights.", "Vérifier l'échappement/sanitisation des contenus non fiables.", "Tester les comportements en préproduction."]);
  add(findings, "DB-SEC-001", "Database Security", "P0", definerHits.length ? "PARTIAL" : "NOT_VERIFIED", "Fonctions SECURITY DEFINER",
    [`files with SECURITY DEFINER=${definerHits.length}`, ...definerHits.slice(0, 40)],
    "La présence de fonctions SECURITY DEFINER exige une matrice explicite de privilèges et de chemins d'appel.",
    ["Maintenir l'interdiction anon par défaut.", "Pour chaque RPC de lecture publique, définir une projection contrôlée et minimale, avec Owner approval.", "Tester EXECUTE par rôle et vérifier search_path, RLS et exposition indirecte."], true);

  const ragFiles = files.filter(p => /embedding|vector|chunk|rag|grounding|citation|provenance/i.test(rel(o.repo, p)));
  add(findings, "RAG-001", "RAG & AI", "P0", ragFiles.length ? "PARTIAL" : "FAIL", "Chaîne RAG détectée",
    [`RAG-related files=${ragFiles.length}`, ...ragFiles.slice(0, 40).map(p => rel(o.repo, p))],
    "Le code présent ne prouve pas que les embeddings sont sémantiques, que l'index est actif ni que les réponses sont ancrées.",
    ["Vérifier modèle, dimension, fournisseur, index, métadonnées et version d'embedding.", "Mesurer embeddings sémantiques réels séparément des hash FNV/lexicaux.", "Exécuter un benchmark reproductible Recall@k, Precision@k, groundedness et citation exact-match.", "Abstention obligatoire lorsque les preuves sont insuffisantes."]);
  const docsCount = docs.length;
  add(findings, "EVID-001", "Evidence & Governance", "P1", "Traçabilité des preuves", docsCount ? "PARTIAL" : "FAIL",
    [`documents inventoried=${docsCount}`],
    "Un fichier ou un identifiant de source ne constitue pas à lui seul une preuve vérifiée.",
    ["Modéliser SOURCE → EVIDENCE → CLAIM → CONTENT → CITATION.", "Conserver origine, date, version, empreinte et statut de vérification.", "Tester que chaque citation soutient réellement l'affirmation."]);

  // Optional execution of scripts already declared in package.json; no install/update commands.
  const runs: CheckRun[] = [];
  if (o.runChecks && pkg) {
    const candidates: Array<[string, string | undefined]> = [
      ["lint", scripts.lint], ["typecheck", scripts.typecheck || scripts["type-check"]],
      ["test", scripts.test], ["build", scripts.build]
    ];
    for (const [name, command] of candidates) {
      if (!command || typeof command !== "string") { runs.push({ name, command: "(absent)", status: "SKIPPED", exitCode: null, durationMs: 0, outputTail: "Script absent." }); continue; }
      const start = Date.now();
      const result = exec(process.platform === "win32" ? "cmd.exe" : "sh",
        process.platform === "win32" ? ["/d", "/s", "/c", `npm run ${name}`] : ["-lc", `npm run ${name}`],
        o.repo, 15 * 60 * 1000);
      runs.push({ name, command: `npm run ${name}`, status: result.code === 0 ? "PASS" : "FAIL", exitCode: result.code, durationMs: Date.now() - start, outputTail: safeTail(result.out) });
    }
  } else {
    for (const name of ["lint", "typecheck", "test", "build"]) runs.push({ name, command: "(not run)", status: "SKIPPED", exitCode: null, durationMs: 0, outputTail: o.runChecks ? "package.json absent." : "Use --run-checks to execute existing scripts." });
  }

  // Integrate runtime results as explicit findings.
  if (o.runChecks) {
    const failed = runs.filter(x => x.status === "FAIL");
    const skipped = runs.filter(x => x.status === "SKIPPED");
    add(findings, "QA-003", "Quality Engineering", "P0", failed.length ? "FAIL" : skipped.length ? "PARTIAL" : "PASS",
      "Exécution des contrôles existants",
      runs.map(x => `${x.name}: ${x.status}${x.exitCode === null ? "" : ` (exit ${x.exitCode})`} ${x.durationMs}ms`),
      "Les contrôles non exécutés ou en échec ne peuvent pas être considérés comme validés.",
      ["Corriger les causes d'échec après revue.", "Ne pas remplacer les tests par des scripts qui retournent toujours zéro."]);
  } else {
    add(findings, "QA-003", "Quality Engineering", "P1", "NOT_VERIFIED", "Exécution des contrôles",
      ["Aucun script de qualité n'a été exécuté dans ce mode."],
      "La présence de scripts n'est pas une preuve d'exécution.",
      ["Relancer avec --run-checks après revue de l'état du dépôt."]);
  }

  const p0p1Open = findings.filter(f => ["P0", "P1"].includes(f.severity) && ["FAIL", "BLOCKED", "NOT_VERIFIED"].includes(f.status));
  const decision = p0p1Open.length ? "NO_GO" : findings.some(f => f.status === "PARTIAL") ? "CONDITIONAL_GO" : "GO";
  const timestamp = new Date().toISOString();
  const report = {
    product: "AMEN SpiriTech", masterVersion: VERSION, generatedAt: timestamp,
    repo: o.repo, branch: branch.out.trim() || null, commit: commit.out.trim() || null,
    workingTree: git.code !== 0 ? "NOT_VERIFIED" : git.out.trim() ? "DIRTY" : "CLEAN",
    safety: { remoteAccess: false, sqlExecuted: false, databaseWrites: false, sourceFilesModified: false, deployment: false },
    inventory: { filesInspected: files.length, documents: docs.length, tests: tests.length, migrations: migrations.length, workflows: workflows.length, apiFiles: api.length, i18nFiles: i18n.length, seoFiles: seo.length },
    summary: { PASS: count(findings, "PASS"), PARTIAL: count(findings, "PARTIAL"), FAIL: count(findings, "FAIL"), BLOCKED: count(findings, "BLOCKED"), NOT_VERIFIED: count(findings, "NOT_VERIFIED"), INFO: count(findings, "INFO"), p0p1Open: p0p1Open.length, decision },
    findings, checkRuns: runs,
    ownerGatedActions: [
      { id: "OWNER-001", action: "Toute modification de privilèges RPC, RLS, SECURITY DEFINER ou exposition anon", approval: "Database Owner + Security Owner", executed: false },
      { id: "OWNER-002", action: "Toute migration SQL ou écriture sur les corpus/chunks/embeddings", approval: "Data Owner + sauvegarde + préproduction", executed: false },
      { id: "OWNER-003", action: "Toute publication/déploiement en production", approval: "Release Owner", executed: false }
    ],
    remediationOrder: [
      "P0-SEC: confirmer ou infirmer chaque secret réel; rotation si confirmé.",
      "P0-DB: conserver anon fermé; inventorier les RPC et créer des chemins de lecture minimaux approuvés.",
      "P0-QA: établir un runner de tests réellement exécutables et des assertions critiques.",
      "P0-RAG: prouver embeddings sémantiques, retrieval, grounding, citations et abstention.",
      "P1-DOC: établir le registre documentaire relié au commit et aux composants.",
      "P1-CI: automatiser lint, typecheck, tests, build et rapports.",
      "P1-SEO: auditer routes publiques, sitemap, robots, canonical, hreflang et JSON-LD.",
      "P2-I18N: vérifier la parité réelle des neuf langues annoncées."
    ]
  };

  fs.mkdirSync(o.out, { recursive: true });
  const stamp = timestamp.replace(/[:.]/g, "-");
  const jsonPath = path.join(o.out, `amen-full-remediation-${stamp}.json`);
  const mdPath = path.join(o.out, `amen-full-remediation-${stamp}.md`);
  fs.writeFileSync(jsonPath, JSON.stringify(report, null, 2), "utf8");

  const md = [
    "# AMEN SpiriTech — Full Remediation Master V2",
    `- Generated: ${timestamp}`, `- Version: ${VERSION}`, `- Repository: ${o.repo}`,
    `- Branch: ${report.branch ?? "NOT_VERIFIED"}`, `- Commit: ${report.commit ?? "NOT_VERIFIED"}`,
    `- Decision: **${decision}**`, "",
    "## Safety boundary",
    "- Read-only repository audit; no remote connection, SQL execution, database writes, source edits or deployment.",
    "- Secret values are never emitted. Static matches require human validation.",
    "", "## Inventory",
    ...Object.entries(report.inventory).map(([k, v]) => `- ${k}: ${v}`),
    "", "## Summary",
    ...Object.entries(report.summary).map(([k, v]) => `- ${k}: ${v}`),
    "", "## Findings",
    ...findings.flatMap(f => [`### ${f.id} — ${f.title}`, `- Domain: ${f.domain}`, `- Severity: ${f.severity}`, `- Status: **${f.status}**`,
      `- Risk: ${f.risk}`, "- Evidence:", ...f.evidence.map(x => `  - ${x}`), "- Remediation:", ...f.remediation.map(x => `  - ${x}`),
      ...(f.ownerGate ? ["- **OWNER APPROVAL REQUIRED**"] : []), ""]),
    "## Executed checks", ...runs.flatMap(r => [`- ${r.name}: ${r.status}; command=${r.command}; exit=${r.exitCode}; duration=${r.durationMs}ms`,
      ...(r.outputTail ? ["```text", r.outputTail, "```"] : [])]),
    "", "## Owner-gated actions",
    "- No privileged database or production action is authorized by this report.",
    "- RPC grants, RLS, SECURITY DEFINER, corpus writes and deployments require explicit owners and controlled approvals.",
    "", "## Decision rule",
    "- GO is not issued when any P0/P1 FAIL, BLOCKED or NOT_VERIFIED remains.",
    "- PARTIAL is never silently converted to PASS.",
    "- A static PASS is not runtime certification."
  ].join("\n");
  fs.writeFileSync(mdPath, md, "utf8");

  console.log("AMEN FULL REMEDIATION MASTER V2 — COMPLETE");
  console.log(`Files inspected: ${files.length}; docs: ${docs.length}; tests: ${tests.length}; migrations: ${migrations.length}`);
  console.log(`PASS=${count(findings, "PASS")} PARTIAL=${count(findings, "PARTIAL")} FAIL=${count(findings, "FAIL")} BLOCKED=${count(findings, "BLOCKED")} NOT_VERIFIED=${count(findings, "NOT_VERIFIED")}`);
  console.log(`Decision: ${decision}`);
  console.log(`JSON: ${jsonPath}`);
  console.log(`Markdown: ${mdPath}`);
  if (o.strict && p0p1Open.length) process.exitCode = 2;
}
main();
