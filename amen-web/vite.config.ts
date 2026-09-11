import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import { VitePWA } from 'vite-plugin-pwa'
import tsconfigPaths from 'vite-tsconfig-paths'
import { fileURLToPath } from 'url'
import { URL as NodeURL } from 'url'

export default defineConfig({
  plugins: [
    react(),
    tsconfigPaths(),
    VitePWA({
      registerType: 'autoUpdate',
      includeAssets: ['favicon.ico', 'apple-touch-icon.png'],
      manifest: {
        name: 'AMEN',
        short_name: 'AMEN',
        theme_color: '#0a0a0a',
        background_color: '#ffffff',
        display: 'standalone',
        icons: [{ src: 'vite.svg', sizes: '192x192', type: 'image/svg+xml' }]
      },
      workbox: { globPatterns: ['**/*.{js,css,html,ico,png,svg}'] }
    })
  ],
  resolve: { alias: { '@': fileURLToPath(new NodeURL('./src', import.meta.url)) } },
  server: { proxy: { '/api': { target: 'http://localhost:8000', changeOrigin: true } } }
})
