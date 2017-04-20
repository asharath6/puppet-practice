class openmrs::params {
    $pack_name = $facts ['os']['family'] ? {
        'RedHat' => 'tomcat',
        'Debian' => ['tomcat7','tomcat7-admin']
    }
}