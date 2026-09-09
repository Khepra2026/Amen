// @ts-nocheck
import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';
import { VitePWA } from 'vite-plugin-pwa';
import tsconfigPaths from 'vite-tsconfig-paths';
import { fileURLToPath, URL } from 'node:url';
export default defineConfig({
    plugins: [
        react(),
        tsconfigPaths(),
        VitePWA({
            registerType: 'autoUpdate',
            workbox: { globPatterns: ['**/*.{js,css,html,ico,png,svg}'] }
        })
    ],
    resolve: {
        alias: { '@': fileURLToPath(new URL('./src', import.meta.url)) }
    },
    server: {
        proxy: { '/api': { target: 'http://localhost:8000', changeOrigin: true } }
    }
});
