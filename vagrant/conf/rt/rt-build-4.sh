echo "# ===================================="
echo "# prereq for rt4"
echo "# ===================================="
yum -y install openssl-devel
yum -y install perl-CPAN

# have to run something interactive
# to initialize CPAN
/bin/perl -MCPAN -e shell

cpan FCGI::ProcManager


