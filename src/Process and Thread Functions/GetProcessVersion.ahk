; =================================================================================================
; Function......: GetMaximumProcessorCount
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/dd405489(v=vs.85).aspx
; =================================================================================================
GetMaximumProcessorCount(ProcessId)
{
    return, DllCall("Kernel32.dll\GetMaximumProcessorCount", "UInt", ProcessId)
}
; ===================================================================================

MsgBox, % GetMaximumProcessorCount(0)





/* C++ ==============================================================================
DWORD WINAPI GetProcessVersion(
    _In_  DWORD ProcessId        // UInt
);
================================================================================== */