; =================================================================================================
; Function......: QueryPerformanceCounter
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms644904(v=vs.85).aspx
; =================================================================================================
QueryPerformanceCounter()
{
    if DllCall("Kernel32.dll\QueryPerformanceCounter", "Int64*", lpPerformanceCount)
    {
        return, % lpPerformanceCount
    }
}
; ===================================================================================

MsgBox % QueryPerformanceCounter()


DllCall("Kernel32.dll\QueryPerformanceFrequency", "Int64*", F)
DllCall("Kernel32.dll\QueryPerformanceCounter", "Int64*", S)
loop, 10000000
    i++
DllCall("Kernel32.dll\QueryPerformanceCounter", "Int64*", E)
MsgBox, % (E - S) / F





/* C++ ==============================================================================
BOOL WINAPI QueryPerformanceCounter(
    _Out_  LARGE_INTEGER *lpPerformanceCount        // Int64*
);
================================================================================== */