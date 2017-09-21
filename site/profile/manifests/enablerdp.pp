class profile::enablerdp {
    exec {'enable-rdp':
	command => 'New-ItemProperty -Path ‘HKLM:SYSTEM\CurrentControlSet\Control\Terminal Server’ -Name fDenyTSConnections -Value 0',
        provider => powershell,
    }
}
