; ===================================================================================
; Name..........: GetDiskFreeSpaceEx
; Author........: jNizM
; Modified......:
; Links.........: GetDiskFreeSpaceEx function
;                 http://msdn.microsoft.com/en-us/library/windows/desktop/aa364937(v=vs.85).aspx
; AHK ===============================================================================
GetDiskFreeSpaceEx(lpDirectoryName)
{
    VarSetCapacity(lpFreeBytesAvailable, 8)
    VarSetCapacity(lpTotalNumberOfBytes, 8)
    VarSetCapacity(lpTotalNumberOfFreeBytes, 8)
    if DllCall("kernel32.dll\GetDiskFreeSpaceEx"
                , "Str", lpDirectoryName
                , "UInt", &lpFreeBytesAvailable
                , "UInt", &lpTotalNumberOfBytes
                , "UInt", &lpTotalNumberOfFreeBytes)
    {
        return, { 0 : Numget(lpFreeBytesAvailable, 0, "Int64")
                , 1 : Numget(lpTotalNumberOfBytes, 0, "Int64")
                , 2 : Numget(lpTotalNumberOfFreeBytes, 0, "Int64") }
    }
}
; ===================================================================================

GDFSEx := GetDiskFreeSpaceEx("C:\")

MsgBox, % "FreeBytesAvailable:`t`t"     GDFSEx[0]   " Bytes`n"
        . "TotalNumberOfBytes:`t"       GDFSEx[1]   " Bytes`n"
        . "TotalNumberOfFreeBytes:`t"   GDFSEx[2]   " Bytes`n"



/* C++ ==============================================================================
BOOL WINAPI GetDiskFreeSpaceEx(
    _In_opt_   LPCTSTR lpDirectoryName,
    _Out_opt_  PULARGE_INTEGER lpFreeBytesAvailable,
    _Out_opt_  PULARGE_INTEGER lpTotalNumberOfBytes,
    _Out_opt_  PULARGE_INTEGER lpTotalNumberOfFreeBytes
);
================================================================================== */