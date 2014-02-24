; =================================================================================================
; Function......: GetSystemWow64Directory
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........: GetSystemWow64DirectoryW (Unicode) and GetSystemWow64DirectoryA (ANSI)
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms724405(v=vs.85).aspx
; =================================================================================================
GetSystemWow64Directory()
{
    static lpnSize := VarSetCapacity(lpBuffer, 260, 0)
    if DllCall("Kernel32.dll\GetSystemWow64Directory", "Str", lpBuffer, "UInt", lpnSize)
    {
        return, lpBuffer
    }
}
; ===================================================================================

MsgBox, % GetSystemWow64Directory()





/* C++ ==============================================================================
UINT WINAPI GetSystemWow64Directory(
  _Out_  LPTSTR lpBuffer,        // Str
  _In_   UINT uSize              // UInt
);
================================================================================== */