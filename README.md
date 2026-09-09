# AMEN - AI Knowledge Platform

![Build](https://img.shields.io/badge/build-1630%20modules-brightgreen)
![PWA](https://img.shields.io/badge/PWA-Ready-blue)
![Vercel](https://img.shields.io/badge/deployed%20on-Vercel-black)

**Prod:** https://amen-coral.vercel.app/

## Stack
- Frontend: React 18 + Vite 5.4.21 + TypeScript
- PWA: vite-plugin-pwa 0.19.8 (theme_color #0a0a0a)
- Builder: GrapesJS 0.21.0 (1.1 MB chunk splitté)
- State: Zustand + TanStack Query

## Dev
\\\ash
cd amen-web
npm install
npm run dev      # http://localhost:5173
npm run build    # 1630 modules, 0 error
\\\

## Deploy
- **Vercel:** Root Directory = \men-web\, Build = \
pm run build\, Output = \dist\
- **Netlify:** Lit \
etlify.toml\ (base=amen-web)

## Structure
\\\
AMEN/
├── amen-web/          # Frontend prod (Ready)
│   ├── src/app/main.tsx
│   ├── vite.config.ts # PWA theme_color fix
│   ├── vercel.json
│   └── public/_redirects # SPA rewrite
├── vercel.json        # Root vercel config
├── netlify.toml
└── .gitignore         # node_modules/ dist/ clean
\\\

Fix history: 500 MB node_modules -> 95 KiB, TS2322 variant/size, Rollup /src/app/main.tsx, duplicate vite.config.js
