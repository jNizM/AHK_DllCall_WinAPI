; =================================================================================================
; Function......: BlockInput
; DLL...........: User32.dll
; Library.......: User32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms646290(v=vs.85).aspx
; =================================================================================================
BlockInput(fBlockIt)
{
    DllCall("User32.dll\BlockInput", "UInt", fBlockIt)
}
; ===================================================================================

BlockInput(1)        ; Keyboard and Mouse input events are blocked.
Sleep, 5000
BlockInput(0)        ; Keyboard and Mouse input events are unblocked.





/* C++ ==============================================================================
BOOL WINAPI BlockInput(        // UInt
    _In_  BOOL fBlockIt        // UInt
);
================================================================================== */