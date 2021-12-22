from node as builder

workdir /app
copy ./src /app
run npm install && npm run build

from nginx
copy --from=builder /app/dist /usr/share/nginx/html
copy --from=builder /app/data/nginx /etc/nginx/conf.d
