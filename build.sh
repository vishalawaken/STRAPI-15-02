#!/bin/bash
export NODE_ENV=production
npm install esbuild
npm install @esbuild/linux-x64
npm install
npm run build
