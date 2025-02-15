#!/bin/bash
export NODE_ENV=production
npm install @swc/core
npm install @swc/core-linux-x64-gnu
npm install @swc/core-linux-x64-musl
npm install
npm run build
