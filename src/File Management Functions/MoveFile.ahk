; =================================================================================================
; Function......: MoveFile
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........: MoveFileW (Unicode) and MoveFileA (ANSI)
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/aa365239(v=vs.85).aspx
; =================================================================================================
MoveFile(lpExistingFileName, lpNewFileName)
{
    DllCall("Kernel32.dll\MoveFile", "Str", lpExistingFileName, "Str", lpNewFileName)
}

; ===================================================================================

MoveFile("C:\Temp\TestFile.txt", "C:\Temp\TestFile_new.txt")





/* C++ ==============================================================================
BOOL WINAPI MoveFile(                        // UInt
    _In_  LPCTSTR lpExistingFileName,        // Str
    _In_  LPCTSTR lpNewFileName              // Str
);
================================================================================== */