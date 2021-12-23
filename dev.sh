#!/bin/bash

trap 'kill 0' SIGINT;

# watch src index.css and compile the tailwind css into build
npx tailwindcss -i ./src/index.css -o ./dist/output.css --watch &

# Copy all of the html files into build
npx nodemon --watch app --exec 'cp src/*.html dist' &

# serve the build directory locally
npx serve dist &

wait
