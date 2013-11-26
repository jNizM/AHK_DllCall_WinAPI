; ===================================================================================
; Name..........: SleepEx
; Author........: jNizM
; Modified......:
; Links.........: SleepEx function
;                 http://msdn.microsoft.com/en-us/library/windows/desktop/ms686307(v=vs.85).aspx
; AHK ===============================================================================
SleepEx(dwMilliseconds, bAlertable)
{
    return, DllCall("kernel32.dll\SleepEx", "UInt", dwMilliseconds, "UInt", bAlertable)
}
; ===================================================================================

SleepEx(2000, 0)
MsgBox, % "SleepEx: 2000 ms"



/* C++ ==============================================================================
DWORD WINAPI SleepEx(
    _In_  DWORD dwMilliseconds,
    _In_  BOOL bAlertable
);
================================================================================== */