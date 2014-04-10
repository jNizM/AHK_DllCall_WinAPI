; =================================================================================================
; Function......: GetFileSize
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/aa364955(v=vs.85).aspx
; =================================================================================================
GetFileSize(hFile)
{
    hFile := DllCall("Kernel32.dll\CreateFile", "Str", hFile, "UInt", 0x80000000, "UInt", 1, "UInt", 0, "UInt", 3, "UInt", 0, "UInt", 0)
    lpFileSizeHigh := DllCall("Kernel32.dll\GetFileSize", "UInt", hFile, "UInt", 0)
    DllCall("Kernel32.dll\CloseHandle", "UInt", hFile)
    return lpFileSizeHigh
}

; ===================================================================================

MsgBox, % GetFileSize("C:\Windows\Notepad.exe") " Bytes"





/* C++ ==============================================================================
DWORD WINAPI GetFileSize(
    _In_       HANDLE hFile,                 // UInt
    _Out_opt_  LPDWORD lpFileSizeHigh        // UInt
);
================================================================================== */