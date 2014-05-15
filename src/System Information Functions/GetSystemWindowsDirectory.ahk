; =================================================================================================
; Function......: GetSystemWindowsDirectory
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........: GetSystemWindowsDirectoryW (Unicode) and GetSystemWindowsDirectoryA (ANSI)
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms724403(v=vs.85).aspx
; =================================================================================================
GetSystemWindowsDirectory()
{
    static lpnSize := VarSetCapacity(lpBuffer, 260, 0)
    if DllCall("Kernel32.dll\GetSystemWindowsDirectory", "Str", lpBuffer, "UInt", lpnSize)
    {
        return lpBuffer
    }
}
; ===================================================================================

MsgBox, % GetSystemWindowsDirectory()





/* C++ ==============================================================================
UINT WINAPI GetSystemWindowsDirectory(        // UInt
    _Out_  LPTSTR lpBuffer,                   // Str
    _In_   UINT uSize                         // UInt
);
================================================================================== */