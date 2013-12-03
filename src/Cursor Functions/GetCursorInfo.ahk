; =================================================================================================
; Function......: GetCursorInfo
; DLL...........: User32.dll
; Library.......: User32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms648389(v=vs.85).aspx
; =================================================================================================
GetCursorInfo()
{
    static PtrSize := A_PtrSize
    static CURSORINFO, init := VarSetCapacity(CURSORINFO, PtrSize + 16, 0) && NumPut(PtrSize + 16, CURSORINFO, "UInt")
    if (DllCall("User32.dll\GetCursorInfo", "Ptr", &CURSORINFO))
    {
        return, { 0 : NumGet(CURSORINFO, 0, "UInt"), 1 : NumGet(CURSORINFO, 4, "UInt"), 2 : NumGet(CURSORINFO, 8, "Ptr")
                , 3 : NumGet(CURSORINFO, PtrSize + 8, "Int"), 4 : NumGet(CURSORINFO, PtrSize + 12, "Int") }
    }
}
; ===================================================================================

GetCursorInfo := GetCursorInfo()

MsgBox, % "GetCursorInfo function`n"
        . "CURSORINFO structure`n"
        . "POINT structure`n`n"
        . "cbSize:`t`t`t"         GetCursorInfo[0]   "`n"
        . "flags:`t`t`t"          GetCursorInfo[1]   "`n"
        . "hCursor:`t`t`t"        GetCursorInfo[2]   "`n"
        . "x-coordinate:`t`t"     GetCursorInfo[3]   "`n"
        . "y-coordinate:`t`t"     GetCursorInfo[4]





/* C++ ==============================================================================
BOOL WINAPI GetCursorInfo(
    _Inout_  PCURSORINFO pci        // (16 + A_PtrSize)             Ptr
);


typedef struct {
    DWORD   cbSize;                 //  4 =>   0                    UInt
    DWORD   flags;                  //  4 =>   4                    UInt
    HCURSOR hCursor;                //  4 =>   8                    Ptr
    POINT   ptScreenPos;            //  ==> POINT
} CURSORINFO, *PCURSORINFO, *LPCURSORINFO;

typedef struct tagPOINT {
    LONG x;                         //  4 =>   8 + A_PtrSize        Int
    LONG y;                         //  4 =>  12 + A_PtrSize        Int
} POINT, *PPOINT;
================================================================================== */