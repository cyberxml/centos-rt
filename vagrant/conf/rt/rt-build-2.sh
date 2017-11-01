echo "# ===================================="
echo "# Postgresql Database"
echo "# ===================================="

sudo yum install postgresql-server postgresql-contrib postgresql-devel
sudo postgresql-setup initdb
cp /vagrant/conf/rt/pg_hba.conf /var/lib/pgsql/data/pg_hba.conf
sudo systemctl start postgresql
sudo systemctl enable postgresql

echo set postgres password for database account
echo run \password
sudo -u postgres psql postgres

