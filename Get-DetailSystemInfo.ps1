Import-Module .\Util.psm1

#Conputer Info
$computerinfo = Get-WmiObject Win32_ComputerSystem 
$processorinfo = Get-WmiObject Win32_Processor
$cacheifo = Get-WmiObject Win32_CacheMemory
$harddiskinfo = Get-WmiObject Win32_DiskDrive

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
"Core Num:" + $processorinfo.NumberOfCores
"Thread Num:" + $processorinfo.ThreadCount
"Processor ID:" + $processorinfo.ProcessorId
"CPU model:" + $processorinfo.Caption
for($i = 0;$i -lt $cacheifo.Count;$i++)
{
    [string]::Format("L{0} Cache Size:{1}" ,$i+1,$cacheifo[$i].InstalledSize.ToString() + "KB")
}

Write-Star("Harddisk Info")
for($i = 0;$i -lt $harddiskinfo.Count;$i++)
{
    "Name: {0}" -f $harddiskinfo.Caption
}


"Press any key to continue..."
Read-Host



 


