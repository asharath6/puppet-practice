class opemrs::mysql_db { 
  
  class {'mysql::server':
  package_name     => 'Percona-Server-server-57',
  package_ensure   => '5.7.11-4.1.el7',
  service_name     => 'mysql',
  config_file      => '/etc/my.cnf',
  includedir       => '/etc/my.cnf.d',
  root_password    => 'root',
  #override_options => {
   # mysqld => {
    #  log-error => '/var/log/mysqld.log',
     # pid-file  => '/var/run/mysqld/mysqld.pid',
    #},
    #mysqld_safe => {
     # log-error => '/var/log/mysqld.log',
    #},
  #}
}

# Note: Installing Percona-Server-server-57 also installs Percona-Server-client-57.
# This shows how to install the Percona MySQL client on its own
class {'mysql::client':
  package_name   => 'Percona-Server-client-57',
  package_ensure => '5.7.11-4.1.el7',
}
}