/**
 * AMEN SpiriTech — Big Four Remediation Master
 * Version: 1.0.0
 *
 * Purpose:
 *   - Establish a reproducible, fail-closed baseline before remediation.
 *   - Inspect repository hygiene, application/security signals, RAG/grounding
 *     implementation signals, i18n coverage, tests and deployment configuration.
 *   - Produce JSON + Markdown evidence reports and a prioritized remediation plan.
 *
 * Safety contract:
 *   - Read-only against source files and Git.
 *   - Does NOT execute SQL, mutate Supabase data, deploy, install packages,
 *     delete files, or change application code.
 *   - Never prints environment variable values or secrets.
 *   - Unknown schema/architecture is reported as NOT_VERIFIED, not PASS.
 *
 * Run from the AMEN repository:
 *   npx tsx scripts/AMEN_BIG4_REMEDIATION_MASTER.ts --repo . --out reports/amen-big4
 *
 * Optional:
 *   npx tsx scripts/AMEN_BIG4_REMEDIATION_MASTER.ts --repo . --out reports/amen-big4 --strict
 *
 * Requires Node.js 20+ and tsx (npx can resolve it if already available locally).
 */

import fs from "node:fs";
import path from "node:path";
import os from "node:os";
import crypto from "node:crypto";
import { execFileSync } from "node:child_process";

type Status = "PASS" | "PARTIAL" | "FAIL" | "BLOCKED" | "NOT_VERIFIED" | "INFO";
type Severity = "P0" | "P1" | "P2" | "P3";
type Finding = {
  id: string;
  domain: string;
  severity: Severity;
  status: Status;
  title: string;
  evidence: string[];
  risk: string;
  remediation: string[];
  references?: string[];
};
type Check = {
  id: string;
  domain: string;
  severity: Severity;
  title: string;
  status: Status;
  evidence: string[];
  risk: string;
  remediation: string[];
};
type Options = { repo: string; out: string; strict: boolean };

const VERSION = "1.0.0";
const SECRET_KEY_RE = /(SUPABASE_SERVICE_ROLE_KEY|SERVICE_ROLE_KEY|OPENAI_API_KEY|ANTHROPIC_API_KEY|OPENROUTER_API_KEY|DATABASE_URL|POSTGRES_PASSWORD|JWT_SECRET)/i;
const IGNORE_DIRS = new Set([
  ".git", "node_modules", ".next", "dist", "build", "coverage",
  ".vercel", ".turbo", ".cache", "vendor", "reports"
]);
const TEXT_EXTS = new Set([
  ".ts", ".tsx", ".js", ".jsx", ".mjs", ".cjs", ".json", ".sql",
  ".md", ".yml", ".yaml", ".toml", ".env.example", ".sh", ".ps1"
]);

function parseArgs(argv: string[]): Options {
  const result: Options = { repo: ".", out: "reports/amen-big4", strict: false };
  for (let i = 0; i < argv.length; i++) {
    const arg = argv[i];
    if (arg === "--repo" && argv[i + 1]) result.repo = argv[++i];
    else if (arg === "--out" && argv[i + 1]) result.out = argv[++i];
    else if (arg === "--strict") result.strict = true;
    else if (arg === "--help" || arg === "-h") {
      console.log([
        "AMEN Big Four Remediation Master",
        "  --repo <path>  Repository root (default: .)",
        "  --out <path>   Report directory (default: reports/amen-big4)",
        "  --strict       Exit non-zero for P0/P1 FAIL or BLOCKED findings",
        "  --help         Show this help"
      ].join("\n"));
      process.exit(0);
    }
  }
  result.repo = path.resolve(result.repo);
  result.out = path.resolve(result.repo, result.out);
  return result;
}

function readText(file: string): string | null {
  try { return fs.readFileSync(file, "utf8"); } catch { return null; }
}

function safeExec(command: string, args: string[], cwd: string): string | null {
  try {
    return execFileSync(command, args, {
      cwd, encoding: "utf8", stdio: ["ignore", "pipe", "pipe"], timeout: 15_000
    }).trim();
  } catch {
    return null;
  }
}

function walk(root: string, maxFiles = 12_000): string[] {
  const files: string[] = [];
  const stack = [root];
  while (stack.length && files.length < maxFiles) {
    const current = stack.pop()!;
    let entries: fs.Dirent[];
    try { entries = fs.readdirSync(current, { withFileTypes: true }); } catch { continue; }
    for (const entry of entries) {
      if (IGNORE_DIRS.has(entry.name)) continue;
      const full = path.join(current, entry.name);
      if (entry.isDirectory()) stack.push(full);
      else if (entry.isFile() && (TEXT_EXTS.has(path.extname(entry.name).toLowerCase()) ||
        entry.name === ".env.example" || entry.name.startsWith(".env."))) files.push(full);
      if (files.length >= maxFiles) break;
    }
  }
  return files;
}

function rel(root: string, file: string): string {
  return path.relative(root, file).split(path.sep).join("/");
}

function add(
  checks: Check[], id: string, domain: string, severity: Severity,
  title: string, status: Status, evidence: string[], risk: string, remediation: string[]
): void {
  checks.push({ id, domain, severity, title, status, evidence, risk, remediation });
}

function existsAny(root: string, candidates: string[]): string[] {
  return candidates.filter(p => fs.existsSync(path.join(root, p)));
}

function inspectRepo(root: string): Check[] {
  const checks: Check[] = [];
  if (!fs.existsSync(root) || !fs.statSync(root).isDirectory()) {
    add(checks, "REP-000", "Repository", "P0", "Repository accessible", "FAIL",
      [`Chemin inaccessible: ${root}`], "Audit incomplet : aucune conclusion fiable possible.",
      ["Relancer avec --repo pointant vers la racine réelle du dépôt AMEN."]);
    return checks;
  }

  const packagePath = path.join(root, "package.json");
  const pkgText = readText(packagePath);
  let pkg: any = null;
  try { pkg = pkgText ? JSON.parse(pkgText) : null; } catch { /* handled below */ }

  add(checks, "REP-001", "Repository", "P0", "package.json lisible", pkg ? "PASS" : "FAIL",
    [pkg ? "package.json présent et JSON valide." : "package.json absent ou JSON invalide."],
    "Sans manifeste valide, les dépendances et scripts de contrôle ne peuvent pas être audités.",
    ["Corriger le JSON sans supprimer les dépendances existantes.", "Vérifier le lockfile avec le gestionnaire réellement utilisé."]);

  if (pkg) {
    const scripts = pkg.scripts ?? {};
    const scriptEvidence = [
      `scripts disponibles: ${Object.keys(scripts).join(", ") || "(aucun)"}`,
      `gestionnaire déclaré: ${pkg.packageManager ?? "non déclaré"}`
    ];
    const hasTypecheck = Boolean(scripts.typecheck || scripts["type-check"]);
    const hasLint = Boolean(scripts.lint);
    const hasTest = Boolean(scripts.test);
    add(checks, "REP-002", "Quality Engineering", "P1", "Scripts de qualité", 
      hasTypecheck && hasLint && hasTest ? "PASS" : "PARTIAL", scriptEvidence,
      "Une chaîne CI/CD sans vérifications explicites peut livrer des régressions silencieuses.",
      [
        "Définir des scripts lint, typecheck et test qui échouent réellement en cas d'erreur.",
        "Ne pas utiliser un script test qui renvoie toujours un succès sans exécuter de tests.",
        "Ajouter un build de production dans la CI."
      ]);
  }

  const gitStatus = safeExec("git", ["status", "--short"], root);
  const branch = safeExec("git", ["branch", "--show-current"], root);
  const commit = safeExec("git", ["rev-parse", "--short", "HEAD"], root);
  const dirty = Boolean(gitStatus);
  add(checks, "REP-003", "Change Management", "P1", "État Git et traçabilité", 
    gitStatus === null ? "NOT_VERIFIED" : dirty ? "PARTIAL" : "PASS",
    [
      `branche: ${branch ?? "non disponible"}`,
      `commit: ${commit ?? "non disponible"}`,
      `working tree: ${gitStatus === null ? "Git indisponible" : dirty ? "modifications présentes" : "propre"}`
    ],
    "Un audit sans commit identifiable ou avec changements non tracés ne permet pas de reproduire exactement les résultats.",
    ["Conserver le rapport avec le commit audité.", "Ne pas réinitialiser ni écraser les modifications locales.", "Faire relire les changements avant merge."]);

  const envExample = existsAny(root, [".env.example", ".env.template", ".env.sample"]);
  const envFiles = [".env", ".env.local", ".env.production", ".env.development"]
    .filter(p => fs.existsSync(path.join(root, p)));
  add(checks, "SEC-001", "Secrets", "P1", "Gestion des fichiers d'environnement",
    envExample.length ? "PASS" : "PARTIAL",
    [
      `modèles d'environnement présents: ${envExample.join(", ") || "aucun"}`,
      `fichiers locaux présents (noms seulement): ${envFiles.join(", ") || "aucun"}`
    ],
    "Des fichiers d'environnement suivis par Git peuvent exposer des secrets.",
    [
      "Vérifier que les fichiers .env réels sont ignorés par Git.",
      "Ne jamais inclure les valeurs des secrets dans les rapports ou logs.",
      "Documenter uniquement les noms des variables requises dans .env.example."
    ]);

  const configCandidates = [
    "next.config.js", "next.config.mjs", "next.config.ts", "vite.config.ts",
    "vercel.json", "supabase/config.toml", "middleware.ts", "src/middleware.ts"
  ];
  const configs = existsAny(root, configCandidates);
  add(checks, "SEC-002", "Application Security", "P1", "Configuration de sécurité inspectable",
    configs.length ? "PARTIAL" : "NOT_VERIFIED",
    [`configurations trouvées: ${configs.join(", ") || "aucune parmi les chemins connus"}`],
    "La présence d'un fichier de configuration ne prouve pas que les protections sont correctes.",
    [
      "Auditer CSP, headers, CORS, cookies, authentification et redirections sur la configuration réellement utilisée.",
      "Tester les règles en environnement de préproduction.",
      "Vérifier les en-têtes HTTP réellement servis, pas uniquement les fichiers source."
    ]);

  const migrationDirs = existsAny(root, ["supabase/migrations", "migrations", "db/migrations"]);
  add(checks, "DB-001", "Data Governance", "P1", "Historique de migrations",
    migrationDirs.length ? "PARTIAL" : "NOT_VERIFIED",
    [`dossiers de migrations: ${migrationDirs.join(", ") || "non trouvés"}`],
    "Sans historique vérifiable, les changements de schéma peuvent diverger entre environnements.",
    [
      "Comparer les migrations du dépôt à l'état du schéma distant avant toute modification.",
      "Éviter les ALTER/DROP/DELETE non justifiés par un diagnostic.",
      "Appliquer les migrations en préproduction avec sauvegarde et plan de retour arrière."
    ]);

  const testCandidates = existsAny(root, [
    "tests", "test", "__tests__", "e2e", "playwright.config.ts", "vitest.config.ts",
    "jest.config.js", "jest.config.ts"
  ]);
  add(checks, "QA-001", "Quality Engineering", "P1", "Infrastructure de tests",
    testCandidates.length ? "PARTIAL" : "FAIL",
    [`artefacts de tests: ${testCandidates.join(", ") || "aucun chemin de test reconnu"}`],
    "Sans tests automatisés, les corrections de sécurité et de RAG risquent de créer des régressions.",
    [
      "Créer des tests unitaires et d'intégration sur les flux critiques.",
      "Créer un jeu de référence RAG avec questions, sources attendues et critères de notation.",
      "Ajouter des tests E2E pour authentification, recherche, citations, abstention et publication."
    ]);

  return checks;
}

function inspectContent(root: string, files: string[]): Check[] {
  const checks: Check[] = [];
  const candidates = files.filter(f => !f.includes(`${path.sep}reports${path.sep}`));
  const scanned: string[] = [];
  const suspicious: Array<{ file: string; line: number; kind: string }> = [];
  const secretLike: Array<{ file: string; line: number; kind: string }> = [];
  const ragSignals = new Set<string>();
  const i18nSignals = new Set<string>();
  const rlsSignals = new Set<string>();
  const groundingSignals = new Set<string>();
  const testSignals = new Set<string>();

  for (const file of candidates) {
    const ext = path.extname(file).toLowerCase();
    if (!TEXT_EXTS.has(ext) && path.basename(file) !== ".env.example") continue;
    const text = readText(file);
    if (text === null || text.length > 1_500_000) continue;
    scanned.push(rel(root, file));
    const lines = text.split(/\r?\n/);
    lines.forEach((line, index) => {
      const trimmed = line.trim();
      if (!trimmed || trimmed.startsWith("//") || trimmed.startsWith("*") || trimmed.startsWith("--")) return;

      if (/(service_role|SUPABASE_SERVICE_ROLE_KEY|sk-[A-Za-z0-9_-]{16,}|AKIA[0-9A-Z]{16})/.test(line)) {
        // Report only the location and category, never the matching line.
        secretLike.push({ file: rel(root, file), line: index + 1, kind: "possible secret/token literal" });
      }
      if (/dangerouslySetInnerHTML/.test(line)) suspicious.push({ file: rel(root, file), line: index + 1, kind: "HTML injection sink: review sanitization" });
      if (/createClient\s*\([^,\n]+,\s*[^)\n]*(SERVICE_ROLE|service_role)/i.test(line)) suspicious.push({ file: rel(root, file), line: index + 1, kind: "possible privileged Supabase key in application code" });
      if (/verify_jwt\s*=\s*false/i.test(line)) suspicious.push({ file: rel(root, file), line: index + 1, kind: "JWT verification disabled: confirm endpoint is intentionally public" });
      if (/Access-Control-Allow-Origin["']?\s*[:=]\s*["']\*|cors:\s*["']\*["']/i.test(line)) suspicious.push({ file: rel(root, file), line: index + 1, kind: "wildcard CORS signal: review exposure and credentials" });

      const low = line.toLowerCase();
      if (/(embedding|vector|pgvector|match_documents|similarity_search|hybrid_search)/.test(low)) ragSignals.add(rel(root, file));
      if (/(grounding|citation|source_id|provenance|abstain|not_verified|unsourced)/.test(low)) groundingSignals.add(rel(root, file));
      if (/(locale|i18n|international|translation|messages\/|locales\/)/.test(low)) i18nSignals.add(rel(root, file));
      if (/(row level security|enable row level security|create policy|auth\.uid\(\)|security definer)/.test(low)) rlsSignals.add(rel(root, file));
      if (/(describe\(|it\(|test\(|playwright|vitest|jest)/.test(low)) testSignals.add(rel(root, file));
    });
  }

  add(checks, "SRC-001", "Repository Coverage", "P2", "Fichiers texte inspectés", "INFO",
    [`${scanned.length} fichiers texte inspectés.`, `Échantillon complet listé dans le rapport JSON.`],
    "L'inspection statique ne prouve pas l'exécution correcte du système et peut manquer les comportements dynamiques.",
    ["Compléter par tests d'exécution et revue humaine des résultats."]);

  add(checks, "SEC-003", "Secrets", "P0", "Signaux de secrets codés en dur",
    secretLike.length ? "FAIL" : "PARTIAL",
    secretLike.length
      ? secretLike.slice(0, 30).map(x => `${x.file}:${x.line} — ${x.kind}`).concat(secretLike.length > 30 ? [`... ${secretLike.length - 30} autres occurrences masquées`] : [])
      : ["Aucun motif évident détecté ; cela ne prouve pas l'absence de secrets."],
    "Un secret exposé dans le dépôt peut permettre un accès non autorisé. Les valeurs ne sont volontairement jamais affichées.",
    [
      "Vérifier chaque emplacement signalé sans recopier les valeurs dans un ticket.",
      "Si un secret réel a été commité, le révoquer/faire tourner immédiatement.",
      "Contrôler l'historique Git et les logs CI ; retirer le secret de l'historique selon une procédure approuvée."
    ]);

  add(checks, "SEC-004", "Application Security", "P1", "Signaux de surfaces sensibles",
    suspicious.length ? "PARTIAL" : "NOT_VERIFIED",
    suspicious.length
      ? suspicious.slice(0, 50).map(x => `${x.file}:${x.line} — ${x.kind}`).concat(suspicious.length > 50 ? [`... ${suspicious.length - 50} autres signaux`] : [])
      : ["Aucun motif évident détecté ; les contrôles d'exécution restent nécessaires."],
    "Les signaux statiques sont des pistes de revue, pas une preuve de vulnérabilité ni de sécurité.",
    [
      "Examiner chaque occurrence dans son contexte.",
      "Tester l'authentification, l'autorisation et les entrées utilisateur.",
      "Ne pas supprimer mécaniquement un contrôle sans comprendre le flux métier."
    ]);

  add(checks, "RAG-001", "RAG & AI", "P1", "Traces d'implémentation RAG",
    ragSignals.size ? "PARTIAL" : "NOT_VERIFIED",
    [`fichiers comportant des signaux RAG: ${ragSignals.size}`, ...[...ragSignals].slice(0, 30)],
    "La présence de code d'embedding ne démontre pas que l'index est peuplé ni que la recherche retourne des résultats pertinents.",
    [
      "Exécuter un test de bout en bout avec identifiants de documents connus.",
      "Vérifier modèle, dimensions, index, seuils, filtres et version de l'embedding.",
      "Mesurer Recall@k, Precision@k, groundedness et exactitude des citations sur un benchmark versionné."
    ]);

  add(checks, "RAG-002", "RAG & AI", "P0", "Mécanismes de provenance et d'abstention",
    groundingSignals.size ? "PARTIAL" : "NOT_VERIFIED",
    [`fichiers comportant des signaux de provenance/grounding: ${groundingSignals.size}`, ...[...groundingSignals].slice(0, 30)],
    "Une réponse sans preuve vérifiable peut être prise à tort pour un fait établi.",
    [
      "Imposer une référence source vérifiable à toute affirmation factuelle issue du corpus.",
      "Refuser ou nuancer la réponse lorsque la récupération ne fournit pas de preuve suffisante.",
      "Tester les citations contre le texte source, pas uniquement contre l'existence d'un identifiant."
    ]);

  add(checks, "I18N-001", "Internationalization", "P2", "Signaux d'internationalisation",
    i18nSignals.size ? "PARTIAL" : "NOT_VERIFIED",
    [`fichiers comportant des signaux i18n: ${i18nSignals.size}`, ...[...i18nSignals].slice(0, 30)],
    "Des fichiers de traduction présents ne prouvent pas la parité fonctionnelle des langues annoncées.",
    [
      "Comparer les clés de toutes les langues à une locale de référence.",
      "Détecter les clés manquantes, chaînes vides et retours silencieux à une autre langue.",
      "Tester RTL pour les langues concernées et vérifier les citations multilingues."
    ]);

  add(checks, "SEC-005", "Database Security", "P1", "Signaux de contrôles RLS",
    rlsSignals.size ? "PARTIAL" : "NOT_VERIFIED",
    [`fichiers comportant des signaux RLS/politiques: ${rlsSignals.size}`, ...[...rlsSignals].slice(0, 30)],
    "Des politiques déclarées dans le code ne prouvent pas que chaque table exposée est protégée en production.",
    [
      "Inventorier les tables et vues exposées via API.",
      "Tester les rôles anon, authenticated et service sur données de test.",
      "Vérifier vues, fonctions SECURITY DEFINER, storage policies et chemins indirects d'accès."
    ]);

  add(checks, "QA-002", "Quality Engineering", "P1", "Signaux de tests présents",
    testSignals.size ? "PARTIAL" : "FAIL",
    [`fichiers avec signaux de test: ${testSignals.size}`, ...[...testSignals].slice(0, 30)],
    "Des mots-clés de test ne garantissent pas que les tests sont exécutables ou qu'ils passent.",
    [
      "Exécuter lint, typecheck, tests unitaires, tests d'intégration et build en CI.",
      "Enregistrer le code de sortie, la durée et le commit testé.",
      "Bloquer la livraison si les tests critiques échouent."
    ]);

  return checks;
}

function buildMarkdown(report: any): string {
  const counts = report.summary;
  const out: string[] = [
    "# AMEN SpiriTech — Big Four Remediation Report",
    "",
    `- Généré (UTC) : ${report.generatedAt}`,
    `- Version du master : ${report.masterVersion}`,
    `- Dépôt : \`${report.repository}\``,
    `- Commit : ${report.git.commit ?? "non disponible"}`,
    `- Branche : ${report.git.branch ?? "non disponible"}`,
    "",
    "## Synthèse",
    "",
    `- Contrôles : ${counts.total}`,
    `- FAIL : ${counts.FAIL}`,
    `- BLOCKED : ${counts.BLOCKED}`,
    `- PARTIAL : ${counts.PARTIAL}`,
    `- NOT_VERIFIED : ${counts.NOT_VERIFIED}`,
    `- PASS : ${counts.PASS}`,
    "",
    "> Ce rapport est une inspection statique locale. Il ne constitue ni un audit de pénétration, ni une certification ISO, ni une preuve d'état de la base distante.",
    "",
    "## Contrôles et constats",
    ""
  ];
  for (const c of report.checks as Check[]) {
    out.push(`### ${c.id} — ${c.title}`);
    out.push("");
    out.push(`- **Domaine :** ${c.domain}`);
    out.push(`- **Priorité :** ${c.severity}`);
    out.push(`- **Statut :** ${c.status}`);
    out.push(`- **Risque :** ${c.risk}`);
    out.push("- **Preuves :**");
    for (const e of c.evidence) out.push(`  - ${e.replace(/\n/g, " ")}`);
    out.push("- **Remédiation :**");
    for (const r of c.remediation) out.push(`  - ${r}`);
    out.push("");
  }
  out.push("## Règles de décision");
  out.push("");
  out.push("- Un contrôle `NOT_VERIFIED` n'est jamais un `PASS`.");
  out.push("- Un `PASS` statique ne vaut pas validation d'exécution.");
  out.push("- Aucun GO global ne doit être prononcé si un contrôle P0 critique est `FAIL` ou `BLOCKED`.");
  out.push("- Les actions de remédiation sur données doivent passer par une migration versionnée, revue et testée.");
  out.push("");
  return out.join("\n");
}

function main(): void {
  const opts = parseArgs(process.argv.slice(2));
  const repo = opts.repo;
  const packageText = readText(path.join(repo, "package.json"));
  const gitStatus = safeExec("git", ["status", "--short"], repo);
  const gitBranch = safeExec("git", ["branch", "--show-current"], repo);
  const gitCommit = safeExec("git", ["rev-parse", "HEAD"], repo);
  const files = fs.existsSync(repo) ? walk(repo) : [];
  const checks = [
    ...inspectRepo(repo),
    ...inspectContent(repo, files)
  ];

  const summary: Record<Status, number> = {
    PASS: 0, PARTIAL: 0, FAIL: 0, BLOCKED: 0, NOT_VERIFIED: 0, INFO: 0
  };
  for (const c of checks) summary[c.status]++;

  const report = {
    reportType: "AMEN_BIG4_REMEDIATION_BASELINE",
    masterVersion: VERSION,
    generatedAt: new Date().toISOString(),
    hostPlatform: `${os.platform()} ${os.arch()}`,
    repository: repo,
    git: {
      branch: gitBranch,
      commit: gitCommit,
      workingTree: gitStatus === null ? "NOT_VERIFIED" : gitStatus ? "DIRTY" : "CLEAN"
    },
    packageManifestDetected: Boolean(packageText),
    safety: {
      sourceFilesMutated: false,
      databaseTouched: false,
      networkCallsMade: false,
      secretsPrinted: false,
      destructiveActionsExecuted: false
    },
    summary: { total: checks.length, ...summary },
    decision: {
      status: checks.some(c => c.severity === "P0" && (c.status === "FAIL" || c.status === "BLOCKED"))
        ? "NO_GO"
        : checks.some(c => c.severity === "P0" && c.status !== "PASS")
          ? "GO_NOT_DEMONSTRATED"
          : "STATIC_BASELINE_ONLY",
      note: "Cette décision porte uniquement sur les preuves statiques collectées par ce script."
    },
    filesScanned: files.map(f => rel(repo, f)),
    checks
  };

  fs.mkdirSync(opts.out, { recursive: true });
  const stamp = new Date().toISOString().replace(/[:.]/g, "-");
  const jsonPath = path.join(opts.out, `amen-big4-${stamp}.json`);
  const mdPath = path.join(opts.out, `amen-big4-${stamp}.md`);
  fs.writeFileSync(jsonPath, JSON.stringify(report, null, 2), { encoding: "utf8", flag: "wx" });
  fs.writeFileSync(mdPath, buildMarkdown(report), { encoding: "utf8", flag: "wx" });

  console.log("AMEN BIG FOUR REMEDIATION MASTER — BASELINE COMPLETE");
  console.log(`Repository: ${repo}`);
  console.log(`Files inspected: ${files.length}`);
  console.log(`Checks: ${checks.length}`);
  console.log(`FAIL=${summary.FAIL} BLOCKED=${summary.BLOCKED} PARTIAL=${summary.PARTIAL} NOT_VERIFIED=${summary.NOT_VERIFIED} PASS=${summary.PASS}`);
  console.log(`Decision: ${report.decision.status}`);
  console.log(`JSON report: ${jsonPath}`);
  console.log(`Markdown report: ${mdPath}`);

  const p0Failure = checks.some(c => c.severity === "P0" && (c.status === "FAIL" || c.status === "BLOCKED"));
  const p1Failure = checks.some(c => (c.severity === "P0" || c.severity === "P1") &&
    (c.status === "FAIL" || c.status === "BLOCKED"));
  if (opts.strict && p1Failure) process.exitCode = 2;
  else if (p0Failure) process.exitCode = 1;
}

main();
