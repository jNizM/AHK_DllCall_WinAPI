; =================================================================================================
; Function......: GetDoubleClickTime
; DLL...........: User32.dll
; Library.......: User32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms646258(v=vs.85).aspx
; =================================================================================================
GetDoubleClickTime()
{
    return DllCall("User32.dll\GetDoubleClickTime")
}
; ===================================================================================

MsgBox, % GetDoubleClickTime()





/* C++ ==============================================================================
UINT WINAPI GetDoubleClickTime(void);        // UInt
================================================================================== */