#! /bin/bash

yum install -y httpd
amazon-linux-extras enable php7.4
yum install -y php php-cli php-pdo php-fpm php-json php-mysqlnd
wget https://ko.wordpress.org/wordpress-5.8.8-ko_KR.tar.gz
tar xvfz wordpress-5.8.8-ko_KR.tar.gz
cp -ar wordpress/* /var/www/html/
sed -i "s/DirectoryIndex index.html/DirectoryIndex index.php/g" /etc/httpd/conf/httpd.conf
cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
sed -i "s/database_name_here/wordpress/g" /var/www/html/wp-config.php
sed -i "s/username_here/admin/g" /var/www/html/wp-config.php
sed -i "s/password_here/It12345!/g" /var/www/html/wp-config.php
sed -i "s/localhost/wordpress.cz86ggu4aab9.ap-northeast-2.rds.amazonaws.com/g" /var/www/html/wp-config.php
echo "babo" >> /var/www/html/health.html
systemctl enable --now httpd













sdkim.cn6fcv88j4vr.ap-northeast-2.rds.amazonaws.com