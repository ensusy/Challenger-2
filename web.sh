#!/bin/bash

# Carpeta web a copiar

WEB_FOLDER=/vagrant/devops-in-tech/vm/03/web

# Crear contenedor

docker run -d --name bootcamp-web -p 9999:80 -v /vagrant/devops-in-tech/vm/03/web:/usr/share/nginx/html nginx

# Verificar que los archivos se han copiado correctamente

docker exec bootcamp-web ls /usr/share/nginx/html

echo "El servidor Nginx bootcamp-web está corriendo en http://localhost:9999"