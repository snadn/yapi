FROM snadn/docker-alpine-nginx-node
LABEL maintainer="snadn <snadn@snadn.cn>"

ENV TZ=CST-8
EXPOSE 3000

RUN apk update && apk add curl bash git python musl-dev gcc g++ make

COPY ./ /app

WORKDIR /app

RUN npm install --production

CMD ["npm", "start"]