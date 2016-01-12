# Install solarized, pathogen, syntastic, and vim-puppet for vim on OSX
class people::dmcnaught::config {

  $home = "/Users/${::boxen_user}"

  repository { "${home}/.vim/bundle/vim-colors-solarized":
    source => 'altercation/vim-colors-solarized',
  }

  exec { 'install pathogen':
    creates => "${home}/.vim/autoload/pathogen.vim",
    command => 'mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim'
  }

  repository { "${home}/.vim/bundle/syntastic":
    source => 'scrooloose/syntastic',
  }

  repository { "${home}/.vim/bundle/puppet":
    source => 'rodjek/vim-puppet',
  }

  repository { "${home}/.vim/bundle/vim-ansible-yaml":
    source => 'chase/vim-ansible-yaml',
  }
}
