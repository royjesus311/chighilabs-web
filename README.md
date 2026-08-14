# ChighiLabs Web

Sitio comercial de ChighiLabs: POS Facturador, ERP por planes, Automotive Cloud, IoT y desarrollos a medida.

## Despliegue con Dokploy

1. En Dokploy crea una **Application** y elige el proveedor **GitHub**.
2. Selecciona `royjesus311/chighilabs-web`, rama `main`.
3. En **Build Type**, selecciona **Dockerfile**.
4. Deja **Dockerfile path** vacío (usa el archivo raíz) y **Docker Context Path** como `.`.
5. Despliega. El contenedor expone el puerto **80**.
6. En **Domains**, añade `chighilabs.com` con puerto interno **80**. Para `www.chighilabs.com`, crea un CNAME hacia el dominio raíz o configura una redirección en Cloudflare.

El sitio está empaquetado dentro de `chighilabs-site-static.zip` para mantener el repositorio simple y el despliegue reproducible.
