; =================================================================================================
; Function......: Sleep
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms686307(v=vs.85).aspx
; =================================================================================================
SleepEx(dwMilliseconds, bAlertable)
{
    DllCall("Kernel32.dll\SleepEx", "UInt", dwMilliseconds, "UInt", bAlertable)
}
; ===================================================================================

SleepEx(2000, 0)





/* C++ ==============================================================================
DWORD WINAPI SleepEx(
    _In_  DWORD dwMilliseconds,        // UInt
    _In_  BOOL bAlertable              // UInt
);
================================================================================== */