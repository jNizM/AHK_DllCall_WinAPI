; =================================================================================================
; Function......: GetCurrentThreadId
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms683183(v=vs.85).aspx
; =================================================================================================
GetCurrentThreadId()
{
    return DllCall("Kernel32.dll\GetCurrentThreadId")
}
; ===================================================================================

MsgBox, % GetCurrentThreadId()





/* C++ ==============================================================================
DWORD WINAPI GetCurrentThreadId(void);
================================================================================== */