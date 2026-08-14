FROM nginx:1.27-alpine

RUN apk add --no-cache unzip

# El export completo se guarda en partes para evitar límites de carga de GitHub.
# Se reconstruye dentro de la imagen, sin alterar ningún recurso del sitio.
COPY chighilabs-site-static.zip.part-* /tmp/
RUN cat /tmp/chighilabs-site-static.zip.part-* > /tmp/chighilabs-site-static.zip \
    && unzip -oq /tmp/chighilabs-site-static.zip -d /usr/share/nginx/html \
    && rm -f /tmp/chighilabs-site-static.zip /tmp/chighilabs-site-static.zip.part-*

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
