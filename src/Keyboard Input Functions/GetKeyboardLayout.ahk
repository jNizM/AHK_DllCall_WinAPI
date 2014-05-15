; =================================================================================================
; Function......: GetKeyboardLayout
; DLL...........: User32.dll
; Library.......: User32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms646296(v=vs.85).aspx
; =================================================================================================
GetKeyboardLayout(idThread)
{
    return DllCall("User32.dll\GetKeyboardLayout", "UInt", idThread)
}
; ===================================================================================

MsgBox, % GetKeyboardLayout(0)





/* C++ ==============================================================================
HKL WINAPI GetKeyboardLayout(        // Ptr
    _In_  DWORD idThread             // UInt
);
================================================================================== */