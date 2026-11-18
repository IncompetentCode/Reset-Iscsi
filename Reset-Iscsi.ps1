Stop-Service MsIscsi -Force 

Get-Disk | Where-Object BusType -eq iSCSI | Set-Disk -IsOffline $true

Start-Service MsIscsi

Get-Disk | Where-Object BusType -eq iSCSI | Set-Disk -IsOffline $false