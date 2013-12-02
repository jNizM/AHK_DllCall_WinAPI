; =================================================================================================
; Function......: EmptyClipboard
; DLL...........: User32.dll
; Library.......: User32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms649037(v=vs.85).aspx
; AHK =============================================================================================
EmptyClipboard()
{
    DllCall("user32.dll\EmptyClipboard")
}
; ===================================================================================

OpenClipboard(0)
EmptyClipboard()
CloseClipboard()

OpenClipboard(hWndNewOwner)
{
	DllCall("user32.dll\OpenClipboard", "Ptr", hWndNewOwner)
}
CloseClipboard()
{
	DllCall("user32.dll\CloseClipboard")
}



/* C++ ==============================================================================
BOOL WINAPI EmptyClipboard(void);
================================================================================== */