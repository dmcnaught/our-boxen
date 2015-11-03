#dmcnaught application installs
class people::dmcnaught::applications {
  include brewcask
  package {
    [
      'alfred',
      'gpgtools',
      'macvim',
      'macdown',
      'skype',
      'vlc',
    ]: provider => 'brewcask'
  }
  package {
    [
      'ansible',
      'awscli',
      'deis',
      'deisctl',
      'rbenv',
      'ruby',
      'ruby-build',
      'tree',
      'wget',
    ]: provider => 'homebrew'
  }
  class {'vagrant': }
}
