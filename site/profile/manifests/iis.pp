class profile::iis { 
  windowsfeature { 'Web-WebServer':
    ensure => absent,
  }
}  
