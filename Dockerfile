from nginx

run ./build.sh
copy ./build /usr/share/nginx/html
copy ./data/nginx /etc/nginx/conf.d
