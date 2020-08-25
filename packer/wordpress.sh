#!/bin/bash
sudo yum install wget -y
sudo yum install httpd -y 
sudo yum install epel-release -y 
sudo yum -y install https://rpms.remirepo.net/enterprise/remi-release-7.rpm 
sudo yum-config-manager --enable remi-php74 
sudo yum install php -y 
sudo systemctl restart httpd 
sudo systemctl enable httpd 
sudo wget https://wordpress.org/latest.tar.gz 
sudo tar -xf latest.tar.gz -C /var/www/html/ 
sudo mv /var/www/html/wordpress/* /var/www/html/ 
sudo chown apache:apache /var/www/html -R 
sudo yum install php-mysql -y 
sudo systemctl restart httpd 
sudo systemctl enable httpd 


# sudo yum install wget -y
# sudo yum install unzip -y
# sudo yum install httpd -y
# sudo amazon-linux-extras install php7.2 -y
# sudo wget https://wordpress.org/latest.zip
# sudo unzip  latest.zip
# sudo mv wordpress/*   /var/www/html
# sudo chown apache:apache /var/www/html -R 
# sudo systemctl restart  httpd
# sudo systemctl  enable   httpd
