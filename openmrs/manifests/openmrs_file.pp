class openmrs::openmrs_file {
file { '/var/lib/tomcat7/webapps/openmrs.war':
    ensure => 'openmrs.war',
    owner  => owner,
    group  => group,
    mode   => mode,
    source => 'https://excellmedia.dl.sourceforge.net/project/openmrs/releases/OpenMRS_Platform_2.0.1/openmrs.war';
}
file { '/usr/share/tomcat7/.OpenMRS':
    ensure => 'directory',
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }
  file { '/usr/share/tomcat6/.OpenMRS/openmrs-runtime.properties':
   source => 'openmrs-runtime.properties'
   owner => 'root'
   group => 'root'
   mode => '0755'
  }
}

