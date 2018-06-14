class profile::iis { 
  windowsfeature { 'Web-WebServer':
    ensure => present,
  }
  reboot {'after IIS Installed':
    when => 'pending',
  }
}  
