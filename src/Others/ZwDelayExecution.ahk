; =================================================================================================
; Function......: ZwDelayExecution
; DLL...........: Ntdll.dll
; Library.......:
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........:
; =================================================================================================
ZwDelayExecution(Alertable, Interval)
{
    DllCall("Ntdll.dll\ZwDelayExecution", "UChar", Alertable, "Int64*", Interval)
}
; ===================================================================================

DllCall("Kernel32.dll\QueryPerformanceFrequency", "Int64*", F)
DllCall("Kernel32.dll\QueryPerformanceCounter", "Int64*", S)
ZwDelayExecution(0, -2000000)
DllCall("Kernel32.dll\QueryPerformanceCounter", "Int64*", E)
MsgBox, % (E - S) / F





/* C++ ==============================================================================
NTSYSAPI NTSTATUS NTAPI ZwDelayExecution(
    _In_  BOOLEAN Alertable,              // UChar
    _In_  LARGE_INTEGER * Interval        // Int64*
);
================================================================================== */