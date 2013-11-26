; ===================================================================================
; Name..........: ZwDelayExecution
; Author........: jNizM
; Modified......:
; Links.........: ZwDelayExecution function
;                 
; AHK ===============================================================================
ZwDelayExecution(Alertable, Interval)
{
    return, DllCall("ntdll.dll\ZwDelayExecution", "Int", Alertable, "Int64*", -1 * (Interval * 10))
}
; ===================================================================================

DllCall("kernel32.dll\QueryPerformanceFrequency", "Int64*", F)
DllCall("kernel32.dll\QueryPerformanceCounter", "Int64*", S)
ZwDelayExecution(0, 1000000)
DllCall("kernel32.dll\QueryPerformanceCounter", "Int64*", E)
MsgBox, % (E - S) / F



/* C++ ==============================================================================
NTSYSAPI NTSTATUS NTAPI ZwDelayExecution(
    _In_  BOOLEAN Alertable,
    _In_  LARGE_INTEGER * Interval 
);
================================================================================== */