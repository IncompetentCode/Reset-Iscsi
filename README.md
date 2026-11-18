# Reset-Iscsi
Windows iSCSI volume fix

On Windows 10 22H2 I started having issues with a mounted iSCSI volume having intermittent issues after the host machine resumed from sleep. Some files would be accessible while others would hang explorer or return a generic file access error when trying to open files inside programs.

Tried various server/client side parameter tweaks and could not resolve it. Found that taking the disk offline and online would resolve the issue. May be an issue specific to QNAP's iSCSI implementation.

If you run into this same issue, you can create a scheduled task to run this powershell script on wake:
Log: System
Source: Power-Troubleshooter
Event ID: 1 

C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -File "<PATH>\Reset-Iscsi.ps1"
