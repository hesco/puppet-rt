
# https://forge.puppetlabs.com/puppetlabs/apt
# http://backports.debian.org/Instructions/
# https://help.ubuntu.com/community/UbuntuBackports

class rt::repo::apt_backports {

  if defined('apt::backports') {
    if $apt_backports {
      class { 'apt::backports': }
    } else {
      warn('Installing RT requires use of puppetlabs-apt, set apt_backports => true when invoking rt, or ensure it is otherwise enabled.')
    }
  } else {
    fail('Installing RT requires use of puppetlabs-apt module >= 1.3.0')
  }

}

