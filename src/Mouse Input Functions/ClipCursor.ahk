; ===============================================================================================================================
; Function......: ClipCursor
; DLL...........: User32.dll
; Library.......: User32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: https://msdn.microsoft.com/en-us/library/ms648383.aspx
;                 https://msdn.microsoft.com/en-us/library/windows/desktop/ms648383.aspx
; ===============================================================================================================================
ClipCursor(Confine := true, X1 := 100, Y1 := 200, X2 := 800, Y2 := 900)
{
	if !(Confine)
		return DllCall("ClipCursor", "Ptr", 0)

	VarSetCapacity(RECT, 16, 0)
	;DllCall("SetRect", "Ptr", &RECT, "Int", X1, "Int", Y1, "Int", X2, "Int", Y2)
	NumPut(Y2, NumPut(X2, NumPut(Y1, NumPut(X1, RECT, 0, "Int"), "Int"), "Int"), "Int")
	if !(DllCall("ClipCursor", "Ptr", &RECT))
		return A_LastError
	return true
}
; ===============================================================================================================================

ClipCursor(True, 100, 200, 800, 900)    ; Confines the cursor to a rectangular area on the screen.
Sleep 5000
ClipCursor(False)                       ; Release the confines.





/* C++ ==========================================================================================================================
BOOL WINAPI ClipCursor(                                                              // Int
    _In_opt_  const RECT *lpRect                                                     // Ptr
);


typedef struct _RECT {
    LONG left;                 ( X1 )                                                // Int         4          =>   0
    LONG top;                  ( Y1 )                                                // Int         4          =>   4
    LONG right;                ( X2 )                                                // Int         4          =>   8
    LONG bottom;               ( Y2 )                                                // Int         4          =>  12
} RECT, *PRECT;
============================================================================================================================== */