FROM nginx:1.17.9-alpine

RUN apk add --no-cache unzip
RUN rm -rf /usr/share/nginx/html/*

WORKDIR /usr/share/nginx/html/
ADD /site.zip /usr/share/nginx/html/
RUN unzip site.zip
RUN rm site.zip


