; =================================================================================================
; Function......: GetFileSizeEx
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/aa364957(v=vs.85).aspx
; =================================================================================================
GetFileSizeEx(hFile)
{
    static lpFileSize, init := VarSetCapacity(lpFileSize, 1048576, 0)
    hFile := DllCall("Kernel32.dll\CreateFile", "Str", hFile, "UInt", 0x80000000, "UInt", 1, "UInt", 0, "UInt", 3, "UInt", 0, "UInt", 0)
    DllCall("Kernel32.dll\GetFileSizeEx", "UInt", hFile, "UInt", &lpFileSize)
	lpFileSize := NumGet(lpFileSize, 0, "Int64*")
    DllCall("Kernel32.dll\CloseHandle", "UInt", hFile)
    return lpFileSize
}
; ===================================================================================

MsgBox, % GetFileSizeEx("C:\Windows\notepad.exe")





/* C++ ==============================================================================
BOOL WINAPI GetFileSizeEx(
    _In_   HANDLE hFile,                    // UInt
    _Out_  PLARGE_INTEGER lpFileSize        // UInt - Int64*
);
================================================================================== */