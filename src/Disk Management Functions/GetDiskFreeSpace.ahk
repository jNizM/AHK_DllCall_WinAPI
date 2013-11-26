; ===================================================================================
; Name..........: GetDiskFreeSpace
; Author........: jNizM
; Modified......:
; Links.........: GetDiskFreeSpace function
;                 http://msdn.microsoft.com/en-us/library/windows/desktop/aa364935(v=vs.85).aspx
; AHK ===============================================================================
GetDiskFreeSpace(lpRootPathName)
{
    if DllCall("kernel32.dll\GetDiskFreeSpace"
                , "Str", lpRootPathName
                , "UInt*", lpSectorsPerCluster
                , "UInt*", lpBytesPerSector
                , "UInt*", lpNumberOfFreeClusters
                , "UInt*", lpTotalNumberOfClusters)
    {
        return, % (lpSectorsPerCluster * lpBytesPerSector * lpNumberOfFreeClusters)
    }
}
; ===================================================================================

MsgBox, % GetDiskFreeSpace("C:\") " Bytes`n"
        . Round(GetDiskFreeSpace("C:\") / 1024, 2) " KB`n"
        . Round(GetDiskFreeSpace("C:\") / 1024**2, 2) " MB`n"
        . Round(GetDiskFreeSpace("C:\") / 1024**3, 2) " GB"



/* C++ ==============================================================================
BOOL WINAPI GetDiskFreeSpace(
    _In_   LPCTSTR lpRootPathName,
    _Out_  LPDWORD lpSectorsPerCluster,
    _Out_  LPDWORD lpBytesPerSector,
    _Out_  LPDWORD lpNumberOfFreeClusters,
    _Out_  LPDWORD lpTotalNumberOfClusters
);
================================================================================== */