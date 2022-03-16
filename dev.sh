#!/bin/bash

trap 'kill 0' SIGINT;

# Copy all of the html files into build
npx nodemon --verbose --watch src --exec 'cp -r src/* dist' &

# watch src index.css and compile the tailwind css into build
npx tailwindcss -i ./src/index.css -o ./dist/output.css --watch &

# serve the build directory locally
npx serve dist &

wait
