#!/bin/bash
yum -y update
yum -y install httpd
myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
echo "<h2>WebServer with ip: $myip</h2><br>Build by Terraform!" > /var/www/html/index.html
echo "<h2 font color="blue">Hello WorlD!</h2>" > /var/www/html/index.html
sudo service httpd start
chkconfig httpd on
