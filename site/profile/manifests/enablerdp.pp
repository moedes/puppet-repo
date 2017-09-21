class profile::enablerdp {
    exec {'enable-rdp':
	command => 'New-ItemProperty -Path ‘HKLM:SYSTEM\CurrentControlSetControl\Terminal Server’ -Name fDenyTSConnections -Value 0',
        provider => powershell,
    }
}
