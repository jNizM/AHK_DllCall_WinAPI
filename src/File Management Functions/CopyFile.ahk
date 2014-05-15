; =================================================================================================
; Function......: CopyFile
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........: CopyFileW (Unicode) and CopyFileA (ANSI)
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/aa363851(v=vs.85).aspx
; =================================================================================================
CopyFile(lpExistingFileName, lpNewFileName, bFailIfExists)
{
    DllCall("Kernel32.dll\CopyFile", "Str", lpExistingFileName, "Str", lpNewFileName, "UInt", bFailIfExists)
}

; ===================================================================================

CopyFile("C:\Temp\TestFile.txt", "C:\Temp\TestFile_new.txt", 0)





/* C++ ==============================================================================
BOOL WINAPI CopyFile(                        // UInt
    _In_  LPCTSTR lpExistingFileName,        // Str
    _In_  LPCTSTR lpNewFileName,             // Str
    _In_  BOOL bFailIfExists                 // UInt
);
================================================================================== */