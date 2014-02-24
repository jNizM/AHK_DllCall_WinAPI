; =================================================================================================
; Function......: GetPhysicalCursorPos
; DLL...........: User32.dll
; Library.......: User32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/aa969464(v=vs.85).aspx
; =================================================================================================
GetPhysicalCursorPos()
{
    static POINT, init := VarSetCapacity(POINT, 8, 0) && NumPut(8, POINT, "Int")
    if (DllCall("User32.dll\GetPhysicalCursorPos", "Ptr", &POINT))
    {
        return, { 1 : NumGet(POINT, 0, "Int"), 2 : NumGet(POINT, 4, "Int") }
    }
}
; ===================================================================================

GetPhysicalCursorPos := GetPhysicalCursorPos()

MsgBox, % "GetPhysicalCursorPos function`n"
        . "POINT structure`n`n"
        . "x-coordinate:`t`t"     GetPhysicalCursorPos[1]   "`n"
        . "y-coordinate:`t`t"     GetPhysicalCursorPos[2]





/* C++ ==============================================================================
BOOL WINAPI GetPhysicalCursorPos(
    _Out_  LPPOINT lpPoint        //  (8)             Ptr
);


typedef struct tagPOINT {
    LONG x;                       //  4 =>   0        Int
    LONG y;                       //  4 =>   4        Int
} POINT, *PPOINT;
================================================================================== */