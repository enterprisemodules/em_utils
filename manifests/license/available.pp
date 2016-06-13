# Class: em_utils::license::available
#
# This class makes sure all the licenses installed on the server are available on all agents
# The modules from Enterprise Modules need them on the agents. 
#
class em_utils::license::available(
  $server = '',
  $path   = 'em_license'
) {

  file { 'EM entitlements':
    ensure  => 'directory',
    path    => "/etc/puppetlabs/puppet/${path}",
    source  => "puppet://${server}/modules/${path}",
    recurse => true,
  }
}
