#!/bin/bash
export NODE_ENV=production
export SWCRC=true

# Remove existing dependencies
rm -rf node_modules
rm -f package-lock.json

# Install dependencies
npm install @swc/core
npm install @swc/core-linux-x64-gnu
npm install @rollup/rollup-linux-x64-gnu
npm install
npm run build
