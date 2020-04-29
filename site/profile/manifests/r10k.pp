class profile:: {
  class {'r10k':
    remote => 'https://github.com/bring52405/control-repo',
  }
  class {'r10K::webhook::config':
    use_mcollective => false,
    enable_ssl      => false,
  }
  class {'r10k::webhook':
    user  => 'root',
    group => 'root',
  }
}
