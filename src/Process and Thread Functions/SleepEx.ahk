; =================================================================================================
; Function......: Sleep
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms686307(v=vs.85).aspx
; AHK =============================================================================================
SleepEx(dwMilliseconds, bAlertable)
{
    DllCall("kernel32.dll\SleepEx", "UInt", dwMilliseconds, "UInt", bAlertable)
}
; ===================================================================================

DllCall("kernel32.dll\QueryPerformanceFrequency", "Int64*", F)
DllCall("kernel32.dll\QueryPerformanceCounter", "Int64*", S)
SleepEx(2000, 0)
DllCall("kernel32.dll\QueryPerformanceCounter", "Int64*", E)
MsgBox, % (E - S) / F



/* C++ ==============================================================================
DWORD WINAPI SleepEx(
    _In_  DWORD dwMilliseconds,
    _In_  BOOL bAlertable
);
================================================================================== */