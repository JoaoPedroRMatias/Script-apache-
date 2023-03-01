#!/bin/bash

#Atualizando sistema
apt update 
apt upgrade -y

#Instalações
apt install apache2

#Movendo templates baixados. Obs.: templates já baixas em /tmp, e máquina foi configurada para o git.
mv /tmp/templates/* /var/www/html/
systemctl restart apache2.service

