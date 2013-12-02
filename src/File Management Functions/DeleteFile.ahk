; =================================================================================================
; Function......: DeleteFile
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........: DeleteFileW (Unicode) and DeleteFileA (ANSI)
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/aa363915(v=vs.85).aspx
; AHK =============================================================================================
DeleteFile(lpFileName)
{
    DllCall("Kernel32.dll\DeleteFile", "Str", lpFileName)
}

; ===================================================================================

DeleteFile("C:\Temp\TestFile.txt")





/* C++ ==============================================================================
BOOL WINAPI DeleteFile(
    _In_  LPCTSTR lpFileName        // Str
);
================================================================================== */