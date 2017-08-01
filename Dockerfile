FROM node:8.2.1-slim

MAINTAINER Alberto Conteras <a.contreras@catchdigital.com>

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN npm install -g node-sass postcss-cli autoprefixer watch

WORKDIR /var/www

RUN usermod -u 1000 www-data  
RUN usermod -a -G users www-data

RUN chown -R www-data:www-data /var/www

CMD [ "watch", "npm" ]
