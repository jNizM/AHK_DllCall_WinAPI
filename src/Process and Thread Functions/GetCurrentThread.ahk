; =================================================================================================
; Function......: GetCurrentThread
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms683182(v=vs.85).aspx
; =================================================================================================
GetCurrentThread()
{
    return, DllCall("Kernel32.dll\GetCurrentThread")
}
; ===================================================================================

MsgBox, % GetCurrentThread()





/* C++ ==============================================================================
HANDLE WINAPI GetCurrentThread(void);
================================================================================== */