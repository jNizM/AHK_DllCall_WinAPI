; =================================================================================================
; Function......: GetLastError
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms679360(v=vs.85).aspx
; AHK =============================================================================================
GetLastError()
{
	return DllCall("Kernel32.dll\GetLastError")
}

; ===================================================================================

DeleteFile("C:\Temp\TestFile.txt")

FormatMessage(dwMessageId)
{
	VarSetCapacity(lpBuffer, 2024)
	DllCall("Kernel32.dll\FormatMessage", "UInt", 0x1000, "UInt", 0, "UInt", dwMessageId, "UInt", 0x800, "Str", lpBuffer, "UInt", 500, "UInt", 0)
	MsgBox, % "ErrorCode:`t" dwMessageId "`nErrorMessage:`t" lpBuffer
}
DeleteFile(lpFileName)
{
    if (DllCall("kernel32.dll\DeleteFile", "UInt", &lpFileName) = 0)
	{
        FormatMessage(GetLastError())
	}
}





/* C++ ==============================================================================
DWORD WINAPI GetLastError(void);        // UInt
================================================================================== */