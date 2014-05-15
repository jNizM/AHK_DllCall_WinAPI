; =================================================================================================
; Function......: GetFileAttributes
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........: GetFileAttributesW (Unicode) and GetFileAttributesA (ANSI)
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/aa364944(v=vs.85).aspx
; =================================================================================================
GetFileAttributes(hFile)
{
    return DllCall("Kernel32.dll\GetFileAttributes", "Str", hFile)
}

; ===================================================================================

MsgBox, % GetFileAttributes("C:\Windows\Notepad.exe")
        . GetFileAttributes("C:\Windows\")
; File Attribute Constants
; http://msdn.microsoft.com/en-us/library/windows/desktop/gg258117(v=vs.85).aspx





/* C++ ==============================================================================
DWORD WINAPI GetFileAttributes(        // UInt
    _In_  LPCTSTR lpFileName           // Str
);
================================================================================== */