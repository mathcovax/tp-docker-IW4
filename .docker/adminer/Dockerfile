FROM mathcovax/php8

RUN apk --no-cache add \
    curl \
    php83-session \
    php83-pdo \
    php83-pdo_mysql \
    php83-mysqli \
    php83-pdo_pgsql \
    php83-pgsql

WORKDIR /var/www/html
RUN curl -o adminer.php -L https://www.adminer.org/latest.php

RUN touch /var/www/html/index.php
RUN echo "<?php header('Location: adminer.php'); ?>" >> /var/www/html/index.php

COPY --from=mathcovax/composer /usr/local/bin/composer /usr/local/bin/composer

RUN echo "extension=pdo_pgsql.so" > /etc/php83/conf.d/00_pdo_pgsql.ini
RUN echo "extension=pgsql.so" > /etc/php83/conf.d/01_pgsql.ini

CMD /usr/bin/php83 -S 0.0.0.0:8080 -t /var/www/html