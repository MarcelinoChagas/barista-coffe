#!/bin/bash

### Install Dependences
sudo yum install httpd wget vim unzip zip -y


### Enable service and restart
systemct start httpd.service
systemctl enable httpd.service
systemctl restart httpd.service

### Download template website
sudo wget --no-check-certificate https://www.tooplate.com/zip-templates/2137_barista_cafe.zip
sudo unzip 2137_barista_cafe.zip

### Move website to local
cd 2137_barista_cafe && sudo cp -r * /var/www/html
sleep 5

### Restart service httpd
sudo systemctl restart httpd.service

### Clean Archives
cd /home/vagrant && sudo rm -r *

### Show IP to thes WebSite
ip -c a | grep eth1