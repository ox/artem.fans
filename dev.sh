#!/bin/bash

trap 'kill 0' SIGINT;

# watch src index.css and compile the tailwind css into build
npx tailwindcss -i ./src/index.css -o ./build/output.css --watch &

# Copy all of the html files into build
nodemon --watch app --exec 'cp src/*.html build' &

# serve the build directory locally
serve build &

wait
