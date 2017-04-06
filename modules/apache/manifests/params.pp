# Class: apache::params
#
#
#class apache::params {
    # resources
 #   $pack_name = $facts['os']['family']?{
  #  'Redhat' => 'httpd',
  #  'Debian' => 'apache2'
#}






class apache::params{
    $pack_name = $facts['os']['family'] ? {
       'RedHat' => 'httpd',
       'Debian' => 'apache2',
   }
}