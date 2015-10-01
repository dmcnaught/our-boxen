#dmcnaught OSX Config
class people::dmcnaught::osx {

  include osx::finder::empty_trash_securely
  include osx::no_network_dsstores

  osx::recovery_message {
    'If this Mac is found, please call Duncan @ +1 720 240 6575': }

  boxen::osx_defaults { 'Display path bar in Finder Window':
    user   => $::boxen_user,
    domain => 'com.apple.Finder',
    key    => 'ShowPathbar',
    value  => true
  }

  boxen::osx_defaults {
  'Automatically illuminate built-in MacBook keyboard in low light':
    key    => 'kDim',
    domain => 'com.apple.BezelServices',
    value  => true,
    user   => $::boxen_user
  }

  boxen::osx_defaults {
    'Turn off keyboard illumination when computer is not used for 5 minutes':
    key    => 'kDimTime',
    domain => 'com.apple.BezelServices',
    value  => '300',
    user   => $::boxen_user
  }

  boxen::osx_defaults { 'Improve the quality of Bluetooth Audio':
    key    => 'Apple Bitpool Min (editable)',
    domain => 'com.apple.BluetoothAudioAgent',
    value  => '40',
    user   => $::boxen_user
  }

  boxen::osx_defaults { 'Change screenshot directory':
    key    => 'location',
    domain => 'com.apple.screencapture',
    value  => '~/Pictures/Screenshots',
    user   => $::boxen_user
  }

}
