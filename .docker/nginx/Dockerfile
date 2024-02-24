FROM alpine:3.15

RUN apk --no-cache add nginx

COPY nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /var/www/html

RUN chmod -R 755 /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]