FROM nginx:1.27-alpine

RUN apk add --no-cache unzip

COPY chighilabs-site-static.zip /tmp/chighilabs-site-static.zip
RUN unzip -q /tmp/chighilabs-site-static.zip -d /usr/share/nginx/html \
  && rm /tmp/chighilabs-site-static.zip

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
