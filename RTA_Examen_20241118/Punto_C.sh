#!/bin/bash

# para agregar al grupo... después hay que hacer un logout y con exit y después vagrant ssh
# sudo usermod -a -G docker $(whoami)

# Ruta del repositorio
cd ~/UTN-FRA_SO_Examenes/202406/docker/

id
docker login -u francoferrandi
dckr_pat_xHHiSrNyGIdYrJT3qmmHLyqvk4I

# Modificar index.html
echo "<div>
<h1> Sistemas Operativos - UTNFRA </h1></br>
<h2> 2do Parcial - Noviembre 2024 </h2> </br>
<h3> Franco Ferrandi </h3>
<h3> División: 115 </h3>
</div>" > index.html

# Crear Dockerfile
cat <<EOF > Dockerfile
FROM nginx
COPY index.html /usr/share/nginx/html/index.html
EOF

# Construir y pushear la imagen
sudo docker build -t "francoferrandi/web1-ferrandi" .
docker push "francoferrandi/web1-ferrandi"

# Crear script run.sh
cat <<EOF > run.sh
#!/bin/bash
docker run -d -p 8080:80 "francoferrandi/web1-Ferrandi"
EOF

