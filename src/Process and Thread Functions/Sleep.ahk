; =================================================================================================
; Function......: Sleep
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms686298(v=vs.85).aspx
; AHK =============================================================================================
Sleep(dwMilliseconds)
{
    DllCall("Kernel32.dll\Sleep", "UInt", dwMilliseconds)
}
; ===================================================================================

DllCall("Kernel32.dll\QueryPerformanceFrequency", "Int64*", F)
DllCall("Kernel32.dll\QueryPerformanceCounter", "Int64*", S)
Sleep(2000)
DllCall("Kernel32.dll\QueryPerformanceCounter", "Int64*", E)
MsgBox, % (E - S) / F





/* C++ ==============================================================================
VOID WINAPI Sleep(
    _In_  DWORD dwMilliseconds        // UInt
);
================================================================================== */