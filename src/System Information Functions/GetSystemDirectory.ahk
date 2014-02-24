; =================================================================================================
; Function......: GetSystemDirectory
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........: GetSystemDirectoryW (Unicode) and GetSystemDirectoryA (ANSI)
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms724373(v=vs.85).aspx
; =================================================================================================
GetSystemDirectory()
{
    static uSize := VarSetCapacity(lpBuffer, 260, 0)
    if DllCall("Kernel32.dll\GetSystemDirectory", "Str", lpBuffer, "UInt", uSize)
    {
        return, lpBuffer
    }
}
; ===================================================================================

MsgBox, % GetSystemDirectory()





/* C++ ==============================================================================
UINT WINAPI GetSystemDirectory(
    _Out_  LPTSTR lpBuffer,        // Str
    _In_   UINT uSize              // UInt
);
================================================================================== */