; =================================================================================================
; Function......: GetCurrentProcess
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms683179(v=vs.85).aspx
; =================================================================================================
GetCurrentProcess()
{
    return, DllCall("Kernel32.dll\GetCurrentProcess")
}
; ===================================================================================

MsgBox, % GetCurrentProcess()





/* C++ ==============================================================================
HANDLE WINAPI GetCurrentProcess(void);
================================================================================== */