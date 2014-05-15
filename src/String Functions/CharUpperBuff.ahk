; =================================================================================================
; Function......: CharUpperBuff
; DLL...........: User32.dll
; Library.......: User32.lib
; U/ANSI........: CharUpperBuffW (Unicode) and CharUpperBuffA (ANSI)
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms647475(v=vs.85).aspx
; =================================================================================================
CharUpperBuff(lpsz)
{
    if DllCall("User32.dll\CharUpperBuff", "Str", lpsz, "UInt", StrLen(lpsz))
    {
        return lpsz
    }
}
; ===================================================================================

MsgBox, % CharUpperBuff("lower_to_upper")





/* C++ ==============================================================================
DWORD WINAPI CharUpperBuff(         // UInt
    _Inout_  LPTSTR lpsz,           // Str
    _In_     DWORD cchLength        // UInt
);
================================================================================== */