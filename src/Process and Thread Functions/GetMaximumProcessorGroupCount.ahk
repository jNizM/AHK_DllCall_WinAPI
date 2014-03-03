; =================================================================================================
; Function......: GetMaximumProcessorGroupCount
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/dd405490(v=vs.85).aspx
; =================================================================================================
GetMaximumProcessorGroupCount()
{
    return DllCall("Kernel32.dll\GetMaximumProcessorGroupCount")
}
; ===================================================================================

MsgBox, % GetMaximumProcessorGroupCount()





/* C++ ==============================================================================
WORD GetMaximumProcessorGroupCount(void);
================================================================================== */