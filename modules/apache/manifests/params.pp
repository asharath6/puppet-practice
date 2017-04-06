# Class: apache::params
#
#
class apache::params {
    # resources
    $pack_name = $facts['os']['family']?{
    'Redhat' => 'httpd',
    'Debian' => 'apache2'
}