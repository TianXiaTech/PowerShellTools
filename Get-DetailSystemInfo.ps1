#Conputer Info
$computerinfo = Get-WmiObject Win32_ComputerSystem 
$processorinfo = Get-WmiObject Win32_Processor

"ComputerName:" + $computerinfo.PSComputerName
"Manufacturer:" + $computerinfo.Manufacturer
"Model:{0}" -f $computerinfo.Model
"SystemType:" + $computerinfo.SystemType
"PhysicalMemory:" + $computerinfo.TotalPhysicalMemory /1024/1024 + "MB"
"UserName:" + $computerinfo.UserName


 


