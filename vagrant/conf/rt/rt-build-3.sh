echo "# ===================================="
echo "# NGINX"
echo "# ===================================="
# http://www.itzgeek.com/how-tos/linux/centos-how-tos/nginx-php-fpm-mariadb-on-centos-7-rhel-7.html
yum -y install nginx spawn-fcgi
cp /vagrant/conf/rt/nginx.conf /etc/nginx/nginx.conf

# probably not needed
# firewall not enabled by default
#firewall-cmd --permanent --zone=public --add-service=http
#firewall-cmd --reload 

# systemctl disable nginx
# systemctl stop nginx
