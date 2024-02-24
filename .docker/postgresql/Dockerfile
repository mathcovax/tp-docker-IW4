FROM alpine:3.15

RUN echo "http://mirrors.aliyun.com/alpine/v3.15/community" >> /etc/apk/repositories

RUN apk --no-cache add postgresql postgresql-contrib libc6-compat su-exec

COPY docker-entrypoint.sh /docker-entrypoint.sh

COPY postgresql.conf /postgresql.conf

RUN chmod +x /docker-entrypoint.sh

EXPOSE 5432

ENTRYPOINT ["/docker-entrypoint.sh"]