; =================================================================================================
; Function......: SetPhysicalCursorPos
; DLL...........: User32.dll
; Library.......: User32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/aa969465(v=vs.85).aspx
; AHK =============================================================================================
SetPhysicalCursorPos(X, Y)
{
    DllCall("user32.dll\SetPhysicalCursorPos", "Int", X, "Int", Y)
}
; ===================================================================================

SetPhysicalCursorPos(750, 500)



/* C++ ==============================================================================
BOOL WINAPI SetPhysicalCursorPos(
    _In_  int X,        // Int
    _In_  int Y         // Int
);
================================================================================== */