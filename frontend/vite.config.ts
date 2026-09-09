import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import { VitePWA } from 'vite-plugin-pwa'
export default defineConfig({
  plugins: [
    react(),
    VitePWA({
      registerType: 'autoUpdate',
      includeAssets: ['favicon.svg'],
      manifest: {
        name: 'AMEN - SpiriTech Knowledge',
        short_name: 'AMEN',
        description: 'Plateforme mondiale des traditions de connaissance',
        theme_color: '#0a0a0a',
        icons: [{src: 'icon-512.png', sizes: '512x512', type: 'image/png'}]
      },
      workbox: { globPatterns: ['**/*.{js,css,html,ico,png,svg}'] }
    })
  ],
  server: { port: 5173, proxy: {'/api': 'http://localhost:8000'} }
})
