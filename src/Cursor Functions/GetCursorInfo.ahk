; ===========================================================================================================================================================================
; Author ........: jNizM
; Released ......: 2015-03-11
; Modified ......: 2023-01-10
; Tested with....: AutoHotkey v2.0.2 (x64)
; Tested on .....: Windows 11 - 22H2 (x64)
; Function ......: GetCursorInfo()
;
; Parameter(s)...: No parameters used
;
; Return ........: Retrieves information about the global cursor.
; ===========================================================================================================================================================================

#Requires AutoHotkey v2.0

GetCursorInfo()
{
    CURSORINFO := Buffer(16 + A_PtrSize, 0)
    NumPut("UInt", CURSORINFO.Size, CURSORINFO, 0)
    if (DllCall("user32\GetCursorInfo", "Ptr", CURSORINFO))
    {
        tagCURSORINFO := Map()
        tagCURSORINFO["Flags"]   := NumGet(CURSORINFO,  4, "UInt")
        tagCURSORINFO["hCursor"] := NumGet(CURSORINFO,  8, "Ptr")
        tagCURSORINFO["X"]       := NumGet(CURSORINFO,  8 + A_PtrSize, "Int")
        tagCURSORINFO["Y"]       := NumGet(CURSORINFO, 12 + A_PtrSize, "Int")
        return tagCURSORINFO
    }
    return false
}


; ===========================================================================================================================================================================
; Example
; ===========================================================================================================================================================================

CursorInfo := GetCursorInfo()
MsgBox "Flags:`t`t"   CursorInfo["Flags"] "`n"
     . "hCursor:`t`t" CursorInfo["hCursor"] "`n"
     . "x-coord:`t`t" CursorInfo["X"] "`n"
     . "y-coord:`t`t" CursorInfo["Y"]



/* C++ ==========================================================================================================================
BOOL GetCursorInfo(                                         // Int
    [in, out] PCURSORINFO pci                               // Ptr
);


typedef struct tagCURSORINFO {
    DWORD   cbSize;                                         // UInt
    DWORD   flags;                                          // UInt
    HCURSOR hCursor;                                        // Ptr
    POINT   ptScreenPos;                                    // => POINT
} CURSORINFO, *PCURSORINFO, *LPCURSORINFO;


typedef struct tagPOINT {
    LONG x;                                                 // Int
    LONG y;                                                 // Int
} POINT, *PPOINT, *NPPOINT, *LPPOINT;
============================================================================================================================== */