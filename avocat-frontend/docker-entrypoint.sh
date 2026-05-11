#!/bin/sh

if [ ! -d node_modules ]; then
  npm install
fi

# التغيير هنا: استخدام PORT بدلاً من VITE_PORT
npm run dev -- --host 0.0.0.0 --port="${PORT:-8080}"
