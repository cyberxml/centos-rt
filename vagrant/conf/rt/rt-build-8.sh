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
cd /opt/rt4/local/plugins/
ls
cd RT-Extension-Nginx/
ls
./sbin/rt-generate-nginx-conf 
./sbin/rt-nginx-control start
./sbin/rt-nginx-control start
cpan FCGI::ProcManager
./sbin/rt-nginx-control start
./sbin/rt-nginx-control stop
./sbin/rt-nginx-control start
netstat -plant | grep LIST
curl http://localhost

