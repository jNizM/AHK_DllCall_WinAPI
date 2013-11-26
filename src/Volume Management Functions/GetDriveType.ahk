; ===================================================================================
; Name..........: GetDriveType
; Author........: jNizM
; Modified......:
; Links.........: GetDriveType function
;                 http://msdn.microsoft.com/en-us/library/windows/desktop/aa364939(v=vs.85).aspx
; AHK ===============================================================================
GetDriveType(lpRootPathName)
{
    return, DllCall("kernel32.dll\GetDriveType", "Str", lpRootPathName)
}
; ===================================================================================

MsgBox, % GetDriveType("C:\")



/* C++ ==============================================================================
UINT WINAPI GetDriveType(
    _In_opt_  LPCTSTR lpRootPathName
);
================================================================================== */