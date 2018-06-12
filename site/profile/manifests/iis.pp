class profile::iis { 
  windowsfeature {'Web-Server':
    ensure => present,
  }
}  
