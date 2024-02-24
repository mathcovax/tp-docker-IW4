FROM mathcovax/php8 AS binary-with-runtime

RUN apk --no-cache add \
    bash \
    coreutils \
    git \
    make \
    openssh-client \
    patch \
    subversion \
    tini \
    unzip \
    zip \
    curl \
    mercurial \
    p7zip

RUN curl -sS https://getcomposer.org/installer | php83 -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /app

CMD /usr/bin/php83 /usr/local/bin/composer install --ignore-platform-req=ext-iconv