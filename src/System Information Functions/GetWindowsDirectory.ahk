; =================================================================================================
; Function......: GetWindowsDirectory
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........: GetWindowsDirectoryW (Unicode) and GetWindowsDirectoryA (ANSI)
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms724454(v=vs.85).aspx
; =================================================================================================
GetWindowsDirectory()
{
    static uSize := VarSetCapacity(lpBuffer, 260, 0)
    if DllCall("Kernel32.dll\GetWindowsDirectory", "Str", lpBuffer, "UInt", uSize)
    {
        return lpBuffer
    }
}
; ===================================================================================

MsgBox, % GetWindowsDirectory()





/* C++ ==============================================================================
UINT WINAPI GetWindowsDirectory(        // UInt
    _Out_  LPTSTR lpBuffer,             // Str
    _In_   UINT uSize                   // UInt
);
================================================================================== */