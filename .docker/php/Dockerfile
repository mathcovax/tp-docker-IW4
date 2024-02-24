FROM alpine:3.19

RUN apk update && apk upgrade
RUN apk add php83 
RUN apk add php83-fpm 
RUN apk add php83-mysqli 
RUN apk add php83-json 
RUN apk add php83-openssl 
RUN apk add php83-curl 
RUN apk add php83-zlib 
RUN apk add php83-xml 
RUN apk add php83-phar 
RUN apk add php83-intl 
RUN apk add php83-dom 
RUN apk add php83-xmlreader 
RUN apk add php83-ctype 
RUN apk add php83-mbstring 
RUN apk add php83-gd 
RUN apk add php83-tokenizer 
RUN apk add php83-fileinfo 
RUN apk add php83-simplexml 
RUN apk add php83-xmlwriter 
RUN apk add php83-bz2 
RUN apk add php83-zip 
RUN apk add php83-session 
RUN apk add php83-pdo_pgsql 
RUN apk add php83-pdo

COPY www.conf /etc/php83/php-fpm.d/www.conf

CMD ["/usr/sbin/php-fpm83", "-F"]
