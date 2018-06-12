class profile::iis { 
  class windowsfeature {'Web-Server':
  ensure => present,
  }
}  
