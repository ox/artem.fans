#!/bin/bash

npx tailwindcss -i ./index.css -o ./output.css

mkdir -p build
cp *.html build
cp output.css build
