#Configuration for dmcnaught dotfiles
class people::dmcnaught::dotfiles {

  $home = "/Users/${::boxen_user}"
  $dotfiles_dir = "${boxen::config::srcdir}/dotfiles"

  repository { $dotfiles_dir:
    source => "${::boxen_user}/dotfiles"
  }

  exec { 'install dotfiles':
    cwd      => $dotfiles_dir,
    command  => './install.sh',
    provider => shell,
    creates  => "${home}/.vimrc",
    require  => Repository[$dotfiles_dir]
  }
}
