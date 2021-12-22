#!/bin/bash

rm -r dist
mkdir -p dist

npx tailwindcss -i ./src/index.css -o ./dist/output.css
cp src/*.html dist
