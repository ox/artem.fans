from node as builder

workdir /app
copy package.json package-lock.json tailwind.config.js build.sh /app/
run npm install
copy src /app/src
run npm run build

from nginx
copy --from=builder /app/dist /usr/share/nginx/html
copy data/nginx /etc/nginx/conf.d
