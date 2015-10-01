#dmcnaught gems
class people::dmcnaught::gems {

  $version = '2.1.0'

  ruby_gem { 'puppet-lint':
    gem          => 'puppet-lint',
    version      => '~> 0.3.2',
    ruby_version => $version,
  }

  ruby_gem { 'rspec':
    gem          => 'rspec',
    version      => '~> 3.1.0',
    ruby_version => $version,
  }

  ruby_gem { 'puppet':
    gem          => 'puppet',
    ruby_version => $version,
  }

  ruby_gem { 'hiera':
    gem          => 'puppet',
    ruby_version => $version,
  }

  ruby_gem { 'facter':
    gem          => 'puppet',
    ruby_version => $version,
  }

  ruby_gem { 'puppetlabs_spec_helper':
    gem          => 'puppetlabs_spec_helper',
    ruby_version => $version,
  }
}
