; ===================================================================================
; Name..........: GetCurrentProcessId
; Author........: jNizM
; Modified......:
; Links.........: GetCurrentProcessId function
;                 http://msdn.microsoft.com/en-us/library/windows/desktop/ms683180(v=vs.85).aspx
; AHK ===============================================================================
GetCurrentProcessId()
{
    return, DllCall("kernel32.dll\GetCurrentProcessId")
}
; ===================================================================================

MsgBox, % GetCurrentProcessId()



/* C++ ==============================================================================
DWORD WINAPI GetCurrentProcessId(void);
================================================================================== */