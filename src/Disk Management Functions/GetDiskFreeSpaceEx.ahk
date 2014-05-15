; =================================================================================================
; Function......: GetDiskFreeSpaceEx
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........: GetDiskFreeSpaceExW (Unicode) and GetDiskFreeSpaceExA (ANSI)
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/aa364937(v=vs.85).aspx
; =================================================================================================
GetDiskFreeSpaceEx(lpDirectoryName)
{
    VarSetCapacity(lpFreeBytesAvailable, 8, 0)
    VarSetCapacity(lpTotalNumberOfBytes, 8, 0)
    VarSetCapacity(lpTotalNumberOfFreeBytes, 8, 0)
    if DllCall("Kernel32.dll\GetDiskFreeSpaceEx"
                , "Str",    lpDirectoryName
                , "Int64", &lpFreeBytesAvailable
                , "Int64", &lpTotalNumberOfBytes
                , "Int64", &lpTotalNumberOfFreeBytes)
    {
        return { 1 : Numget(lpFreeBytesAvailable, 0, "Int64*")
               , 2 : Numget(lpTotalNumberOfBytes, 0, "Int64*")
               , 3 : Numget(lpTotalNumberOfFreeBytes, 0, "Int64*") }
    }
}
; ===================================================================================

GetDiskFreeSpaceEx := GetDiskFreeSpaceEx("C:\")

MsgBox, % "FreeBytesAvailable:`t`t"       GetDiskFreeSpaceEx[1]   " Bytes`n"
        . "TotalNumberOfBytes:`t"         GetDiskFreeSpaceEx[2]   " Bytes`n"
        . "TotalNumberOfFreeBytes:`t"     GetDiskFreeSpaceEx[3]   " Bytes"





/* C++ ==============================================================================
BOOL WINAPI GetDiskFreeSpaceEx(                                // UInt
    _In_opt_   LPCTSTR lpDirectoryName,                        // Str
    _Out_opt_  PULARGE_INTEGER lpFreeBytesAvailable,           // Int64*
    _Out_opt_  PULARGE_INTEGER lpTotalNumberOfBytes,           // Int64*
    _Out_opt_  PULARGE_INTEGER lpTotalNumberOfFreeBytes        // Int64*
);
================================================================================== */