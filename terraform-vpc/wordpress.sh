#!/bin/bash
sudo yum install wget -y
sudo yum install unzip -y
sudo yum install httpd -y
sudo amazon-linux-extras install php7.2 -y
sudo wget https://wordpress.org/latest.zip
sudo unzip  latest.zip
sudo mv wordpress/*   /var/www/html
sudo systemctl restart  httpd
sudo systemctl  enable   httpd


 
# yum install httpd -y 
# yum install epel-release -y 
# yum -y install https://rpms.remirepo.net/enterprise/remi-release-7.rpm 
# yum-config-manager --enable remi-php74 
# yum install php -y 
# systemctl restart httpd 
# systemctl enable httpd 
# yum install wget -y 
# wget https://wordpress.org/latest.tar.gz 
# tar -xf latest.tar.gz -C /var/www/html/ 
# mv /var/www/html/wordpress/* /var/www/html/ 
# yum install php-mysql -y 
# systemctl restart httpd 