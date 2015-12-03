#dmcnaught OSX Config
class people::dmcnaught::osx {

  include osx::finder::empty_trash_securely
  include osx::finder::show_hidden_files
  include osx::no_network_dsstores
  include osx::global::tap_to_click
  include osx::finder::show_all_filename_extensions

  osx::recovery_message {
    'If this Mac is found, please call Duncan @ +1 720 240 6575':
  }

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

  boxen::osx_defaults { 'enable trackpad three-finger drag':
    ensure => present,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'TrackpadThreeFingerDrag',
    value  => '1',
    user   => $::boxen_user,
  }

  boxen::osx_defaults { 'show battery percentage remaining':
    ensure => present,
    domain => 'com.apple.menuextra.battery',
    key    => 'ShowPercent',
    type   => 'string',
    value  => 'YES',
    user   => $::boxen_user,
  }

  boxen::osx_defaults { 'Trackpad scroll direction:natural - off':
    ensure => present,
    domain => 'Apple Global Domain',
    key    => 'com.apple.swipescrolldirection',
    type   => 'boolean',
    value  => false,
    user   => $::boxen_user,
  }

  boxen::osx_defaults { 'Trackpad AppExpose on':
    ensure => present,
    domain => 'com.apple.dock',
    key    => 'showAppExposeGestureEnabled',
    type   => 'boolean',
    value  => true,
    user   => $::boxen_user,
  }

  osx::dock::hot_corner { 'Desktop':
    position => 'Top Left',
    action   => 'Desktop'
  }
  osx::dock::hot_corner { 'Screen Saver':
    position => 'Bottom Left',
    action   => 'Start Screen Saver'
  }
  osx::dock::hot_corner { 'Notification Center':
    position => 'Top Right',
    action   => 'Notification Center'
  }
  osx::dock::hot_corner { 'Display Sleep':
    position => 'Bottom Right',
    action   => 'Put Display to Sleep'
  }


}
