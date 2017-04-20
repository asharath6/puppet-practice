class openmrs::tomcat_install inherits openmrs::params{
  exec { 'apt-update':
    command => "/usr/bin/apt-update",
    
  }
  package { $openmrs::tomcat_install:pack_name:
    require =>Exec['apt-update']
    ensure => installed,
    
  }
  service { $openmrs::tomcat_install:pack_name:
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    # pattern    => ,
  }
  
  
}