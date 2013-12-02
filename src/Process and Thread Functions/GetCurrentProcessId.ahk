; =================================================================================================
; Function......: GetCurrentProcessId
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms683180(v=vs.85).aspx
; AHK =============================================================================================
GetCurrentProcessId()
{
    return, DllCall("Kernel32.dll\GetCurrentProcessId")
}
; ===================================================================================

MsgBox, % GetCurrentProcessId()





/* C++ ==============================================================================
DWORD WINAPI GetCurrentProcessId(void);
================================================================================== */