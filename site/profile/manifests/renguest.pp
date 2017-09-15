class profile::renguest {
   exec { 'rename-guest':
     command   => '$(Get-WMIObject Win32_UserAccount -Filter "Name=\'guest\'").Rename("new-guest")',
     unless    => 'if (Get-WmiObject Win32_UserAccount -Filter "Name=\'guest\'") { exit 1 }',
     provider  => powershell,
   }
}
