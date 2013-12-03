; =================================================================================================
; Function......: SetLocalTime
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms724936(v=vs.85).aspx
; =================================================================================================
SetLocalTime(wYear = 1601, wMonth = 1, wDayOfWeek = 0, wDay = 1, wHour = 0, wMinute = 0, wSecond = 0, wMilliseconds = 0)
{
    VarSetCapacity(SYSTEMTIME, 16)
    , NumPut(wYear,      SYSTEMTIME,  0, "UShort"), NumPut(wMonth,        SYSTEMTIME,  2, "UShort")
    , NumPut(wDayOfWeek, SYSTEMTIME,  4, "UShort"), NumPut(wDay,          SYSTEMTIME,  6, "UShort")
    , NumPut(wHour,      SYSTEMTIME,  8, "UShort"), NumPut(wMinute,       SYSTEMTIME, 10, "UShort")
    , NumPut(wSecond,    SYSTEMTIME, 12, "UShort"), NumPut(wMilliseconds, SYSTEMTIME, 14, "UShort")
    DllCall("Kernel32.dll\SetLocalTime", "Ptr", &SYSTEMTIME)
}
; ===================================================================================

SetLocalTime(2013, 12, 1, 2, 14, 42, 27, 724)





/* C++ ==============================================================================
BOOL WINAPI SetLocalTime(
    _In_  const SYSTEMTIME *lpSystemTime        //  (16)             Ptr
);


typedef struct _SYSTEMTIME {
    WORD wYear;                                 //   2 =>   0
    WORD wMonth;                                //   2 =>   2        UShort
    WORD wDayOfWeek;                            //   2 =>   4        UShort
    WORD wDay;                                  //   2 =>   6        UShort
    WORD wHour;                                 //   2 =>   8        UShort
    WORD wMinute;                               //   2 =>  10        UShort
    WORD wSecond;                               //   2 =>  12        UShort
    WORD wMilliseconds;                         //   2 =>  14        UShort
} SYSTEMTIME, *PSYSTEMTIME;
================================================================================== */