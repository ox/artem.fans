#!/bin/bash

rm -r dist
mkdir -p dist

npx tailwindcss -c tailwind.config.js -i ./src/index.css -o ./dist/output.css
cp src/*.html dist
