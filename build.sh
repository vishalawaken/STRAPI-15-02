#!/bin/bash
export NODE_ENV=production
export SWCRC=true
npm install @swc/core
npm install @swc/core-linux-x64-gnu
npm install
npm run build
