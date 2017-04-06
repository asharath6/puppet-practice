class apache::service inherits apache::params {

service { $apache::params::pack_name:
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    # pattern    => $pack_name,
    
}


}