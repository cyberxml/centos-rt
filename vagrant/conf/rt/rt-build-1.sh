echo "# ===================================="
echo "# update baseline; disable selinux"
echo "# ===================================="
yum -y update
yum -y install wget
cp /vagrant/conf/rt/config.selinux /etc/selinux/config
echo please log off and reboot
echo "exit; exit; vagrant reload rt; vagrant ssh rt"

