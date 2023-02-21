
#!/bin/bash

# Carpeta web a copiar

WEB_FOLDER=/root/filesystem/home/03/web

# Crear contenedor

docker run -d --name bootcamp-web -p 9999:80 -v /root/filesystem/home/03/web:/usr/share/nginx/html nginx

# Verificar que los archivos se han copiado correctamente

docker exec bootcamp-web ls /usr/share/nginx/html

echo "El servidor Nginx bootcamp-web está corriendo en http://localhost:9999"