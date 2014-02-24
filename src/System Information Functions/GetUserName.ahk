; =================================================================================================
; Function......: GetUserName
; DLL...........: Advapi32.dll
; Library.......: Advapi32.lib
; U/ANSI........: GetUserNameW (Unicode) and GetUserNameA (ANSI)
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms724432(v=vs.85).aspx
; =================================================================================================
GetUserName()
{
    static lpnSize := VarSetCapacity(lpBuffer, 256, 0) + 1
    if DllCall("Advapi32.dll\GetUserName", "Str", lpBuffer, "UInt*", lpnSize)
    {
        return, lpBuffer
    }
}
; ===================================================================================

MsgBox, % GetUserName()





/* C++ ==============================================================================
BOOL WINAPI GetUserName(
    _Out_    LPTSTR lpBuffer,        // Str
    _Inout_  LPDWORD lpnSize         // UInt*
);
================================================================================== */