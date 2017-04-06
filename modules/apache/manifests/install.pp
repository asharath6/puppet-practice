# Class: apache::install
#
#
class apache::install inherits apache::params{
    # resources
    package { $apache::params::pack_name:
        ensure => installed,
        
    }
    
}