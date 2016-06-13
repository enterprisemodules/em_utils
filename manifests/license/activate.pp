# Class: em_utils::license::activate
#
# This class makes sure the EM licenses are activated at the right point during a Puppet run. Best thing is
# add this class in your site.pp. Because it makes sure the entitlements files are copied in the setup stage,
# the entitlements are available when the EM modules start their work.
#
class em_utils::license::activate
{
  require 'stdlib'

  class{'::em_utils::license::available':
    stage => 'setup',
  }
}
