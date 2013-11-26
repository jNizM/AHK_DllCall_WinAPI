; ===================================================================================
; Name..........: LockWorkStation
; Author........: jNizM
; Modified......:
; Links.........: LockWorkStation function
;                 http://msdn.microsoft.com/en-us/library/windows/desktop/aa376875(v=vs.85).aspx
; AHK ===============================================================================
LockWorkStation()
{
    return, DllCall("user32.dll\LockWorkStation")
}
; ===================================================================================

MsgBox, % LockWorkStation()



/* C++ ==============================================================================
BOOL WINAPI LockWorkStation(void);
================================================================================== */