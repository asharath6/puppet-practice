# Class: apache::homepage
#
#
class apache::homepage inherits apache::params{

    
    # resources
    file { '/var/www/html/index.html':
        ensure => file,
        #owner  => owner,
        #group  => group,
        #mode   => mode,
        #source => 'puppet:///modules/class/file.txt';
        content => file('apache/index.html'),
        notify => Service["${apache::params::pack_name}"]
        #restart =>"",
    }
}