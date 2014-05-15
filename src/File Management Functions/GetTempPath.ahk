; =================================================================================================
; Function......: GetTempPath
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........: GetTempPathW (Unicode) and GetTempPathA (ANSI)
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/aa364992(v=vs.85).aspx
; =================================================================================================
GetTempPath()
{
    static lpBuffer, init := VarSetCapacity(lpBuffer, 1024, 0)
    if DllCall("Kernel32.dll\GetTempPath", "UInt", 260 + 1, "Str", lpBuffer)
    {
        return lpBuffer
    }
}

; ===================================================================================

MsgBox, % GetTempPath()





/* C++ ==============================================================================
DWORD WINAPI GetTempPath(              // UInt
    _In_   DWORD nBufferLength,        // UInt
    _Out_  LPTSTR lpBuffer             // Str
);
================================================================================== */