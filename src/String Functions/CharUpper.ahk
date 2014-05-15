; =================================================================================================
; Function......: CharUpper
; DLL...........: User32.dll
; Library.......: User32.lib
; U/ANSI........: CharUpperW (Unicode) and CharUpperA (ANSI)
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms647474(v=vs.85).aspx
; =================================================================================================
CharUpper(lpsz)
{
    if DllCall("User32.dll\CharUpper", "Str", lpsz)
    {
        return lpsz
    }
}
; ===================================================================================

MsgBox, % CharUpper("lower_to_upper")





/* C++ ==============================================================================
LPTSTR WINAPI CharUpper(        // Str
    _Inout_  LPTSTR lpsz        // Str
);
================================================================================== */