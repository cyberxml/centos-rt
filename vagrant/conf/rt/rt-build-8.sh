echo "# ===================================="
echo "# install RT Extension: NGINX"
echo "# ===================================="

systemctl stop nginx
cd /opt
mkdir gits
cd gits/
yum -y install git
git clone https://github.com/bestpractical/rt-extension-nginx/
cd rt-extension-nginx/
perl Makefile.PL 
make
make install
cd /opt/rt4/local/plugins/RT-Extension-Nginx/
./sbin/rt-nginx-control stop
./sbin/rt-nginx-control start
curl http://localhost:8000

echo RT is now running on port 8000

