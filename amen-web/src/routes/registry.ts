export interface RouteContract {
  path: string;
  name: string;
  authRequired: boolean;
  seoTitle: string;
}

export const AMEN_ROUTES: RouteContract[] = [
  { path: "/", name: "Accueil", authRequired: false, seoTitle: "AMEN — Accueil & Souveraineté" },
  { path: "/knowledge", name: "Connaissance", authRequired: false, seoTitle: "AMEN — Base de Connaissance" },
  { path: "/library", name: "Bibliothèque", authRequired: false, seoTitle: "AMEN — Manuscrits & Traités" },
  { path: "/chat", name: "Agent RAG", authRequired: false, seoTitle: "AMEN — Assistant Intelligent" },
  { path: "/builder", name: "Visual Builder", authRequired: true, seoTitle: "AMEN — Éditeur Visuel" },
  { path: "/admin", name: "Administration", authRequired: true, seoTitle: "AMEN — Gouvernance & Sécurité" }
];
