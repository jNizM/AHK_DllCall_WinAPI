; =================================================================================================
; Function......: GetComputerName
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........: GetComputerNameW (Unicode) and GetComputerNameA (ANSI)
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms724295(v=vs.85).aspx
; =================================================================================================
GetComputerName()
{
    static lpnSize := VarSetCapacity(lpBuffer, 64, 0) + 1
    if DllCall("Kernel32.dll\GetComputerName", "Str", lpBuffer, "UInt*", lpnSize)
    {
        return lpBuffer
    }
}
; ===================================================================================

MsgBox, % GetComputerName()





/* C++ ==============================================================================
BOOL WINAPI GetComputerName(
    _Out_    LPTSTR lpBuffer,        // Str
    _Inout_  LPDWORD lpnSize         // UInt*
);
================================================================================== */