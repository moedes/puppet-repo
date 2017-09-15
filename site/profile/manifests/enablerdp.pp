class profile::enablerdp {
    exec {
	command => 'Set-ItemProperty -Path ‘HKLM:SYSTEM\CurrentControlSetControl\Terminal Server’ -Name fDenyTSConnections -Value 0',
        provider => powershell,
    }
}
