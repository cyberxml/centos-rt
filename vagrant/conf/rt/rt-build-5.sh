echo "# ===================================="
echo "# install rt4"
echo "# ===================================="

cd /opt
mkdir tmp
cd /opt/tmp
wget https://download.bestpractical.com/pub/rt/release/rt-4.4.2.tar.gz
tar xzf rt-4.4.2.tar.gz
cd rt-4.4.2
echo there are interactive parts to the next step
./configure --with-db-type=Pg

#
make testdeps
make fixdeps
make testdeps
make fixdeps
make install

cp /vagrant/conf/rt/RT_SiteConfig.pm /opt/rt4/etc

make initialize-database

