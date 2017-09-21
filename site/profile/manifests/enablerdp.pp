class profile::enablerdp {
    exec {'enable-rdp':
	command => 'Set-ItemProperty -Path ‘HKLM:SYSTEM\CurrentControlSet\Control\Terminal Server’ -Name fDenyTSConnections -Value 0',
        provider => powershell,
    }
}
