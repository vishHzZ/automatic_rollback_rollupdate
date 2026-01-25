FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html

HEALTHCHECK CMD wget -q -O /dev/null http://localhost || exit 1

EXPOSE 80
