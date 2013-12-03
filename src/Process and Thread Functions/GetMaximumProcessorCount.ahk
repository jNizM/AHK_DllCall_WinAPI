; =================================================================================================
; Function......: GetMaximumProcessorCount
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/dd405489(v=vs.85).aspx
; AHK =============================================================================================
GetMaximumProcessorCount(GroupNumber)
{
    return, DllCall("Kernel32.dll\GetMaximumProcessorCount", "UShort", GroupNumber)
}
; ===================================================================================

MsgBox, % GetMaximumProcessorCount(0xffff)





/* C++ ==============================================================================
DWORD GetMaximumProcessorCount(
    _In_  WORD GroupNumber        // UShort
);
================================================================================== */