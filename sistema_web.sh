#!/bin/bash

echo "Iniciando instalacao de servidor web via script"

echo "Atualizando Servidor"
apt-get update
apt-get upgrade -y

echo "Instalando Apache2"
apt-get install apache2 -y

echo "Baixando aplicacao em /tmp"
cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Instalando Unzip"
apt-get install unzip -y

echo "Descompactando arquivo main.zip"
unzip main.zip

echo "Copiando conteudo de main.zip para a pasta do apache2"
cd linux-site-dio-main/
cp -r ./* /var/www/html/

echo "Script Finalizado"
