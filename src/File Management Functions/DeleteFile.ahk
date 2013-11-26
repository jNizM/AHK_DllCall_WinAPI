; ===================================================================================
; Name..........: DeleteFile
; Author........: jNizM
; Modified......:
; Links.........: DeleteFile function
;                 http://msdn.microsoft.com/en-us/library/windows/desktop/aa363915(v=vs.85).aspx
; AHK ===============================================================================
DeleteFile(lpFileName)
{
    return, DllCall("kernel32.dll\DeleteFile", "UInt", &lpFileName)
}
; ===================================================================================

MsgBox, % DeleteFile("C:\Temp\TestFile.txt")



/* C++ ==============================================================================
BOOL WINAPI DeleteFile(
    _In_  LPCTSTR lpFileName
);
================================================================================== */