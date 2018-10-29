FROM node:8.12.0-alpine

MAINTAINER Alberto Conteras <a.contreras@catchdigital.com>

RUN apk update && apk add --no-cache git shadow

RUN npm install -g node-sass postcss-cli autoprefixer watch --unsafe-perm

WORKDIR /var/www

RUN chown -R node:node /var/www

CMD [ "watch", "npm" ]
