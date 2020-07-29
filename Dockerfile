FROM node:12

ADD . /app

WORKDIR /app

RUN npm ci
RUN npm run build

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=80

EXPOSE 80

CMD ["/app/node_modules/.bin/nuxt", "start"]
