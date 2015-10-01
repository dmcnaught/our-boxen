#dmcnaught application installs
class people::dmcnaught::applications {
  include brewcask
  package {
    [
      'alfred',
      'gpgtools',
      'macvim',
      'skype',
      'virtualbox',
      'vlc',
    ]: provider => 'brewcask'
  }
  package {
    [
      'awscli',
      'rbenv',
      'ruby',
      'ruby-build',
      'tree',
      'wget',
    ]: provider => 'homebrew'
  }

}
