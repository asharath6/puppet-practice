# Class: 
#
#
class apache::uninstall inherits apache::params {
    # resources

    package { $apache::params::pack_name:
        ensure => purged,
        
    }
}