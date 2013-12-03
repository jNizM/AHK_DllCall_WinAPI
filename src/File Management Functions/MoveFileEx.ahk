; =================================================================================================
; Function......: MoveFileEx
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........: MoveFileExW (Unicode) and MoveFileExA (ANSI)
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/aa365240(v=vs.85).aspx
; =================================================================================================
MoveFileEx(lpExistingFileName, lpNewFileName, dwFlags)
{
    DllCall("Kernel32.dll\MoveFileEx", "Str", lpExistingFileName, "Str", lpNewFileName, "UInt", dwFlags)
}

; ===================================================================================

MoveFileEx("C:\Temp\TestFile.txt", "C:\Temp\TestFile_new.txt", 0x2)





/* C++ ==============================================================================
BOOL WINAPI MoveFileEx(
    _In_      LPCTSTR lpExistingFileName,        // Str
    _In_opt_  LPCTSTR lpNewFileName,             // Str
    _In_      DWORD dwFlags                      // UInt
);
================================================================================== */