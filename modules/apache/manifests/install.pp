# Class: apache::install
#
#
class apache::install {
    # resources
    $pack_name = $facts['os']['family']?{
        'Redhat' => 'httpd'
        'Debain' => 'apache2'
    }
    package { $pack_name:
        ensure => installed,
        
    }
    
}