; =================================================================================================
; Function......: GetCursorPos
; DLL...........: User32.dll
; Library.......: User32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms648390(v=vs.85).aspx
; AHK =============================================================================================
GetCursorPos()
{
    static POINT, init := VarSetCapacity(POINT, 8, 0) && NumPut(8, POINT, "Int")
    if (DllCall("User32.dll\GetCursorPos", "Ptr", &POINT))
    {
        return, { 0 : NumGet(POINT, 0, "Int"), 1 : NumGet(POINT, 4, "Int") }
    }
}
; ===================================================================================

GetCursorPos := GetCursorPos()

MsgBox, % "GetCursorPos function`n"
        . "POINT structure`n`n"
        . "x-coordinate:`t`t"     GetCursorPos[0]   "`n"
        . "y-coordinate:`t`t"     GetCursorPos[1]





/* C++ ==============================================================================
BOOL WINAPI GetCursorPos(
    _Out_  LPPOINT lpPoint        //   (8)             Ptr
);


typedef struct tagPOINT {
    LONG x;                       //   4 =>   0        Int
    LONG y;                       //   4 =>   4        Int
} POINT, *PPOINT;
================================================================================== */