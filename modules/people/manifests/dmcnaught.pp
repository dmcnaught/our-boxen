#Main class for dmcnaught
class people::dmcnaught {

  notify { 'class people::dmcnaught declared': }

  include people::dmcnaught::applications
  include people::dmcnaught::config
  include people::dmcnaught::dotfiles
  include people::dmcnaught::osx
  include people::dmcnaught::gems
}
