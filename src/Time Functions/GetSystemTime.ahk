; =================================================================================================
; Function......: GetSystemTime
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms724390(v=vs.85).aspx
; AHK =============================================================================================
GetSystemTime()
{
    static SYSTEMTIME, init := VarSetCapacity(SYSTEMTIME, 16, 0) && NumPut(16, SYSTEMTIME, "UShort")
    if (DllCall("Kernel32.dll\GetSystemTime", "Ptr", &SYSTEMTIME))
    {
		return, { 0 : NumGet(SYSTEMTIME,  0, "UShort"), 1 : NumGet(SYSTEMTIME,  2, "UShort")
				, 2 : NumGet(SYSTEMTIME,  4, "UShort"), 3 : NumGet(SYSTEMTIME,  6, "UShort")
				, 4 : NumGet(SYSTEMTIME,  8, "UShort"), 5 : NumGet(SYSTEMTIME, 10, "UShort")
				, 6 : NumGet(SYSTEMTIME, 12, "UShort"), 7 : NumGet(SYSTEMTIME, 14, "UShort") }
    }
}
; ===================================================================================

GetSystemTime := GetSystemTime()

MsgBox, % "GetSystemTime function`n"
        . "SYSTEMTIME structure`n`n"
        . "wYear:`t`t"                GetSystemTime[0]   "`n"
        . "wMonth:`t`t"               GetSystemTime[1]   "`n"
        . "wDayOfWeek:`t"             GetSystemTime[2]   "`n"
        . "wDay:`t`t"                 GetSystemTime[3]   "`n"
        . "wHour:`t`t"                GetSystemTime[4]   "`n"
        . "wMinute:`t`t"              GetSystemTime[5]   "`n"
        . "wSecond:`t`t"              GetSystemTime[6]   "`n"
        . "wMilliseconds:`t"          GetSystemTime[7]


		
		

/* C++ ==============================================================================
void WINAPI GetSystemTime(
    _Out_  LPSYSTEMTIME lpSystemTime        //  (16)              Ptr
);


typedef struct _SYSTEMTIME {
    WORD wYear;                             //   2 =>   0
    WORD wMonth;                            //   2 =>   2        UShort
    WORD wDayOfWeek;                        //   2 =>   4        UShort
    WORD wDay;                              //   2 =>   6        UShort
    WORD wHour;                             //   2 =>   8        UShort
    WORD wMinute;                           //   2 =>  10        UShort
    WORD wSecond;                           //   2 =>  12        UShort
    WORD wMilliseconds;                     //   2 =>  14        UShort
} SYSTEMTIME, *PSYSTEMTIME;
================================================================================== */