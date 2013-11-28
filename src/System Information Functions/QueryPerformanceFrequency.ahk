; =================================================================================================
; Function......: QueryPerformanceFrequency
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms644905(v=vs.85).aspx
; AHK =============================================================================================
QueryPerformanceFrequency()
{
    if DllCall("kernel32.dll\QueryPerformanceFrequency", "Int64*", lpFrequency)
    {
        return, % lpFrequency
    }
}
; ===================================================================================

MsgBox % QueryPerformanceFrequency()


DllCall("kernel32.dll\QueryPerformanceFrequency", "Int64*", F)
DllCall("kernel32.dll\QueryPerformanceCounter", "Int64*", S)
loop, 10000000
    i++
DllCall("kernel32.dll\QueryPerformanceCounter", "Int64*", E)
MsgBox, % (E - S) / F



/* C++ ==============================================================================
BOOL WINAPI QueryPerformanceFrequency(
    _Out_  LARGE_INTEGER *lpFrequency
);
================================================================================== */