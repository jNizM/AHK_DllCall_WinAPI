; =================================================================================================
; Function......: GetActiveProcessorGroupCount
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/dd405486(v=vs.85).aspx
; =================================================================================================
GetActiveProcessorGroupCount()
{
    return DllCall("Kernel32.dll\GetActiveProcessorGroupCount")
}
; ===================================================================================

MsgBox, % GetActiveProcessorGroupCount()





/* C++ ==============================================================================
WORD GetActiveProcessorGroupCount(void);        // UShort
================================================================================== */