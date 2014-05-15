; =================================================================================================
; Function......: CharLowerBuff
; DLL...........: User32.dll
; Library.......: User32.lib
; U/ANSI........: CharLowerBuffW (Unicode) and CharLowerBuffA (ANSI)
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms647468(v=vs.85).aspx
; =================================================================================================
CharLowerBuff(lpsz)
{
    if DllCall("User32.dll\CharLowerBuff", "Str", lpsz, "UInt", StrLen(lpsz))
    {
        return lpsz
    }
}
; ===================================================================================

MsgBox, % CharLowerBuff("UPPER_TO_LOWER")





/* C++ ==============================================================================
DWORD WINAPI CharLowerBuff(         // UInt
    _Inout_  LPTSTR lpsz,           // Str
    _In_     DWORD cchLength        // UInt
);
================================================================================== */