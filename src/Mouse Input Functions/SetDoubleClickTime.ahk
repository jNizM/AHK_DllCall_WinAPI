; =================================================================================================
; Function......: SetDoubleClickTime
; DLL...........: User32.dll
; Library.......: User32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms646263(v=vs.85).aspx
; =================================================================================================
SetDoubleClickTime(uInterval)
{
    return DllCall("User32.dll\SetDoubleClickTime", "UInt", uInterval)
}
; ===================================================================================

SetDoubleClickTime(500)





/* C++ ==============================================================================
BOOL WINAPI SetDoubleClickTime(
    _In_  UINT uInterval        // UInt
);
================================================================================== */