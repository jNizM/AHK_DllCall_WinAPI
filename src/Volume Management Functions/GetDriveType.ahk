; =================================================================================================
; Function......: GetDriveType
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........: GetDriveTypeW (Unicode) and GetDriveTypeA (ANSI)
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/aa364939(v=vs.85).aspx
; =================================================================================================
GetDriveType(lpRootPathName)
{
    return, DllCall("Kernel32.dll\GetDriveType", "Str", lpRootPathName)
}
; ===================================================================================

MsgBox, % GetDriveType("C:\")





/* C++ ==============================================================================
UINT WINAPI GetDriveType(
    _In_opt_  LPCTSTR lpRootPathName        // Str
);
================================================================================== */