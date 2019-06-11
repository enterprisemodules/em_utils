# Class: em_utils::license::available
#
# This class makes sure all the licenses installed on the server are available on all agents
# The modules from Enterprise Modules need them on the agents.
#
# The puppet_confdir fact contains the value of the Puppet setting confdir from the puppet.conf
# settings file. So this class copies all entitlemnets to the puppet config directory.
#
class em_utils::license::available(
  $server = '',
  $path   = 'em_license'
) {

  file { 'EM entitlements':
    ensure  => 'directory',
    path    => "${::puppet_confdir}/${path}",
    source  => "puppet://${server}/modules/${path}",
    recurse => true,
  }
}
