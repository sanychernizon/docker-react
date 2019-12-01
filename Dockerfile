FROM node:alpine as builder
WORKDIR /home/node
COPY package.json .
RUN yarn
COPY . .
RUN yarn build

FROM nginx
COPY --from=builder /home/node/build /usr/share/nginx/html