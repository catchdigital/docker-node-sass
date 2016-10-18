# docker-node-sass

Node Sass image for building scss files.

This image accept `watch` and `npm` commands.

## How to use it

Download the image: `docker pull catchdigital/node-sass`

Run the imagem mounting your theme folder into the working directory (`/var/www`).

## Example

`docker run --rm -ti -v $(pwd):/var/www catchdigital/node-sass npm install`

If you want to add multiple commands inside the container when running it:
`docker run --rm -ti -v $(pwd):/var/www catchdigital/node-sass bash -c 'npm install && npm run build'`
