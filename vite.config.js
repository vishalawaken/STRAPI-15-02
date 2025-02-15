import { defineConfig } from 'vite';

export default defineConfig({
  optimizeDeps: {
    exclude: [
      '@strapi/design-system/layout',
      '@strapi/design-system',
      '@strapi/design-system/**',
      '@strapi/icons',
      '@strapi/helper-plugin'
    ],
    esbuildOptions: {
      target: 'es2020'
    }
  },
  build: {
    target: 'es2020'
  },
  resolve: {
    dedupe: ['@strapi/design-system', '@strapi/icons', 'react', 'react-dom']
  }
});
