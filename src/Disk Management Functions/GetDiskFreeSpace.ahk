; =================================================================================================
; Function......: GetDiskFreeSpace
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........: GetDiskFreeSpaceW (Unicode) and GetDiskFreeSpaceA (ANSI)
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/aa364935(v=vs.85).aspx
; =================================================================================================
GetDiskFreeSpace(lpRootPathName)
{
    if DllCall("Kernel32.dll\GetDiskFreeSpace"
                , "Str",   lpRootPathName
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
    _In_   LPCTSTR lpRootPathName,                // Str
    _Out_  LPDWORD lpSectorsPerCluster,           // UInt*
    _Out_  LPDWORD lpBytesPerSector,              // UInt*
    _Out_  LPDWORD lpNumberOfFreeClusters,        // UInt*
    _Out_  LPDWORD lpTotalNumberOfClusters        // UInt*
);
================================================================================== */