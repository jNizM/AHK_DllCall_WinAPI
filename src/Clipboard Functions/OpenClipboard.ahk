; =================================================================================================
; Function......: OpenClipboard
; DLL...........: User32.dll
; Library.......: User32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms649048(v=vs.85).aspx
; =================================================================================================
OpenClipboard(hWndNewOwner = 0)
{
    DllCall("User32.dll\OpenClipboard", "Ptr", hWndNewOwner)
}
; ===================================================================================

OpenClipboard()





/* C++ ==============================================================================
BOOL WINAPI OpenClipboard(             // UInt
    _In_opt_  HWND hWndNewOwner        // Ptr
);
================================================================================== */