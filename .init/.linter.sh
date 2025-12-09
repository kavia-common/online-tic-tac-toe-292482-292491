#!/bin/bash
cd /home/kavia/workspace/code-generation/online-tic-tac-toe-292482-292491/frontend_vite_app
npx eslint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
 if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

