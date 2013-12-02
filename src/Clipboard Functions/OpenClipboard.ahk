; =================================================================================================
; Function......: OpenClipboard
; DLL...........: User32.dll
; Library.......: User32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms649048(v=vs.85).aspx
; AHK =============================================================================================
OpenClipboard(hWndNewOwner)
{
	DllCall("user32.dll\OpenClipboard", "Ptr", hWndNewOwner)
}
; ===================================================================================

OpenClipboard(0)



/* C++ ==============================================================================
BOOL WINAPI OpenClipboard(
    _In_opt_  HWND hWndNewOwner
);
================================================================================== */