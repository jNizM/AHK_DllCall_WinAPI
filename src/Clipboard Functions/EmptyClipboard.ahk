; =================================================================================================
; Function......: EmptyClipboard
; DLL...........: User32.dll
; Library.......: User32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms649037(v=vs.85).aspx
; =================================================================================================
EmptyClipboard()
{
    DllCall("User32.dll\EmptyClipboard")
}
; ===================================================================================

OpenClipboard()
EmptyClipboard()
CloseClipboard()


OpenClipboard(hWndNewOwner = 0)
{
    DllCall("User32.dll\OpenClipboard", "Ptr", hWndNewOwner)
}
CloseClipboard()
{
    DllCall("User32.dll\CloseClipboard")
}





/* C++ ==============================================================================
BOOL WINAPI EmptyClipboard(void);
================================================================================== */