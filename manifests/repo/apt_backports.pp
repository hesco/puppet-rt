
# https://forge.puppetlabs.com/puppetlabs/apt
# http://backports.debian.org/Instructions/
# https://help.ubuntu.com/community/UbuntuBackports

class rt::repo::apt_backports {

  if defined('apt::backports') {
    include apt::backports
    class { 'apt::backports': }
  } else {
    fail('Installing RT requires use of puppetlabs-apt module >= 1.3.0')
  }

}

