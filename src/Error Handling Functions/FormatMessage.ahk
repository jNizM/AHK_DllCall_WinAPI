; =================================================================================================
; Function......: FormatMessage
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........: FormatMessageW (Unicode) and FormatMessageA (ANSI)
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms679351(v=vs.85).aspx
; AHK =============================================================================================
FormatMessage(dwMessageId)
{
    VarSetCapacity(lpBuffer, 2024)
    DllCall("FormatMessage", "UInt", 0x1000, "UInt", 0, "UInt", dwMessageId, "UInt", 0x800, "Str", lpBuffer, "UInt", 500, "UInt", 0)
    MsgBox, % "ErrorCode:`t" dwMessageId "`nErrorMessage:`t" lpBuffer
}
; ===================================================================================

DeleteFile("C:\Temp\TestFile.txt")

GetLastError()
{
    return (DllCall("kernel32.dll\GetLastError"))
}
DeleteFile(lpFileName)
{
    if (DllCall("kernel32.dll\DeleteFile", "UInt", &lpFileName) = 0)
    {
        FormatMessage(GetLastError())
    }
}





/* C++ ==============================================================================
DWORD WINAPI FormatMessage(              // UInt
    _In_      DWORD dwFlags,             // UInt
    _In_opt_  LPCVOID lpSource,          // UInt
    _In_      DWORD dwMessageId,         // UInt
    _In_      DWORD dwLanguageId,        // UInt
    _Out_     LPTSTR lpBuffer,           // Str
    _In_      DWORD nSize,               // UInt
    _In_opt_  va_list *Arguments         // UInt
);
================================================================================== */