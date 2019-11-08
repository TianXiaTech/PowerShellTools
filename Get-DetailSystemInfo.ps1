 #param
 $length = 100
 $format = ""
 
 #Conputer Info
 $computerinfo = Get-WmiObject Win32_ComputerSystem 
 for($i=0;$i -lt $length;$i++)
 {
    $format += "#"
 }
 write $format
 write "`t`t`t`t`tComputer Info"
 write $format
 
 "ComputerName:" + $computerinfo.PSComputerName
 "Manufacturer:" + $computerinfo.Manufacturer
 "Model:{0}" -f $computerinfo.Model
 "SystemType:" + $computerinfo.SystemType
 "PhysicalMemory:" + $computerinfo.TotalPhysicalMemory /1024/1024 + "MB"
 "UserName:" + $computerinfo.UserName
 


