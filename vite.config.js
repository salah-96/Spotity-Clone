import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    host: '0.0.0.0',  // Gör servern tillgänglig för alla nätverksgränssnitt
    port: 5173,        // Porten som servern lyssnar på
    strictPort: true,  // Förhindrar Vite från att välja en annan port om 5173 är upptagen
    watch: {
      usePolling: true,  // Används för att säkerställa att filändringar upptäcks i Docker-miljöer
    }
  }
})
