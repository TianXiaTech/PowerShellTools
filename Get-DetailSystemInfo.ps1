Import-Module .\Util.psm1

#Conputer Info
$computerinfo = Get-WmiObject Win32_ComputerSystem 
$processorinfo = Get-WmiObject Win32_Processor
$cacheifo = Get-WmiObject Win32_CacheMemory

Write-Star("Computer Info")
"ComputerName:" + $computerinfo.PSComputerName
"Manufacturer:" + $computerinfo.Manufacturer
"Model:{0}" -f $computerinfo.Model
"SystemType:" + $computerinfo.SystemType
"PhysicalMemory:" + $computerinfo.TotalPhysicalMemory /1024/1024 + "MB"
"UserName:" + $computerinfo.UserName

Write-Star("Processor Info")
"Name:" + $processorinfo.Name
"Manufacture:" + $processorinfo.Manufacturer

"Press any key to continue..."
Read-Host


 


