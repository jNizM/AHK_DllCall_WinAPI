﻿; =================================================================================================
; Function......: GetCapture
; DLL...........: User32.dll
; Library.......: User32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms646257(v=vs.85).aspx
; =================================================================================================
GetCapture()
{
    return, DllCall("User32.dll\GetCapture")
}
; ===================================================================================

MsgBox, % GetCapture()





/* C++ ==============================================================================
HWND WINAPI GetCapture(void);
================================================================================== */