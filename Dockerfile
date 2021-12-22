from node as builder

workdir /app
copy . /app
run /app/build.sh

from nginx

copy --from=builder /app/build /usr/share/nginx/html
copy --from=builder /app/data/nginx /etc/nginx/conf.d
