class profile::enablerdp {
    exec {'enable-rdp':
	command => 'Set-ItemProperty -Path ‘HKLM:SYSTEM\CurrentControlSet\Control\Terminal Server’ -Name fDenyTSConnections -Value 0',
        command => 'Enable-NetFirewallRule -DisplayGroup 'Remote Desktop'
	provider => powershell,
    }
}
