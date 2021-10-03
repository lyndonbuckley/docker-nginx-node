FROM node:alpine
RUN apk update
RUN apk upgrade
RUN apk add nginx
RUN mkdir /run/nginx
COPY nginx.conf /etc/nginx/nginx.conf
RUN nginx
EXPOSE 80