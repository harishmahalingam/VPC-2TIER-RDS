#!/bin/bash
sudo apt-get update -y
sudo apt-get install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
sudo echo "<h1>Welcome to Apache2 on EC2</h1>" > /var/www/html/index.html
