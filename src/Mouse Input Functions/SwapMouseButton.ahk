; =================================================================================================
; Function......: SwapMouseButton
; DLL...........: User32.dll
; Library.......: User32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms646264(v=vs.85).aspx
; =================================================================================================
SwapMouseButton(fSwap)
{
    DllCall("User32.dll\SwapMouseButton", "UInt", fSwap)
}
; ===================================================================================

SwapMouseButton(1)   ; Left-Hand
sleep 10000
SwapMouseButton(0)   ; Right-Hand





/* C++ ==============================================================================
BOOL WINAPI SwapMouseButton(        // UInt
    _In_  BOOL fSwap                // UInt
);
================================================================================== */