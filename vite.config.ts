import { defineConfig } from 'vite';

export default defineConfig({
  server: {
    host: true, // Permite que Docker acceda al servidor
    port: 5173, // Configura el puerto del servidor
  },
});
