; =================================================================================================
; Function......: CharLower
; DLL...........: User32.dll
; Library.......: User32.lib
; U/ANSI........: CharLowerW (Unicode) and CharLowerA (ANSI)
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms647468(v=vs.85).aspx
; =================================================================================================
CharLower(lpsz)
{
    if DllCall("User32.dll\CharLower", "Str", lpsz)
    {
        return lpsz
    }
}
; ===================================================================================

MsgBox, % CharLower("UPPER_TO_LOWER")





/* C++ ==============================================================================
LPTSTR WINAPI CharLower(        // Str
    _Inout_  LPTSTR lpsz        // Str
);
================================================================================== */