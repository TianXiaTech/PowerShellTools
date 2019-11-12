#Change System Font
#HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts
#Microsoft JhengHei (TrueType) & Microsoft JhengHei UI (TrueType) msjh.ttc
#Microsoft JhengHei Bold (TrueType) & Microsoft JhengHei UI Bold (TrueType) msjhbd.ttc
#Microsoft JhengHei Light (TrueType) & Microsoft JhengHei UI Light (TrueType) msjhl.ttc

#Get hardware info
#Computer\HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Enum\

#WMI
#https://docs.microsoft.com/zh-cn/windows/win32/cimwin32prov/computer-system-hardware-classes
#Get-WmiObject Win32_DiskDrive |Format-List -Property *

function Write-Star {
    param (
        [string]$content
    )

    $length = 100
    $format = ""
    
    for($i=0;$i -lt $length;$i++)
    {
       $format += "#"
    }

    Write-Host $format
    Write-Host "`t`t`t`t`t$content"
    Write-Host $format    
}