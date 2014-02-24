; =================================================================================================
; Function......: GlobalMemoryStatusEx
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/aa366589(v=vs.85).aspx
; =================================================================================================
GlobalMemoryStatusEx()
{
    static MEMORYSTATUSEX, init := VarSetCapacity(MEMORYSTATUSEX, 64, 0) && NumPut(64, MEMORYSTATUSEX, "UInt")
    if (DllCall("Kernel32.dll\GlobalMemoryStatusEx", "Ptr", &MEMORYSTATUSEX))
    {
        return, { 1 : NumGet(MEMORYSTATUSEX,  0, "UInt"),   2 : NumGet(MEMORYSTATUSEX,  4, "UInt")
                , 3 : NumGet(MEMORYSTATUSEX,  8, "UInt64"), 4 : NumGet(MEMORYSTATUSEX, 16, "UInt64")
                , 5 : NumGet(MEMORYSTATUSEX, 24, "UInt64"), 6 : NumGet(MEMORYSTATUSEX, 32, "UInt64")
                , 7 : NumGet(MEMORYSTATUSEX, 40, "UInt64"), 8 : NumGet(MEMORYSTATUSEX, 48, "UInt64")
                , 9 : NumGet(MEMORYSTATUSEX, 56, "UInt64") }
    }
}
; ===================================================================================

GlobalMemoryStatusEx := GlobalMemoryStatusEx()

MsgBox, % "GlobalMemoryStatusEx function`n"
        . "MEMORYSTATUSEX structure`n`n"
        . "Lenght:`t`t`t"                 GlobalMemoryStatusEx[1]   "`n`n"
        . "MemoryLoad:`t`t"               GlobalMemoryStatusEx[2]   " %`n`n"
        . "TotalPhys:`t`t`t"              GlobalMemoryStatusEx[3]   " bytes`n"
        . "AvailPhys:`t`t`t"              GlobalMemoryStatusEx[4]   " bytes`n`n"
        . "TotalPageFile:`t`t"            GlobalMemoryStatusEx[5]   " bytes`n"
        . "AvailPageFile:`t`t"            GlobalMemoryStatusEx[6]   " bytes`n`n"
        . "TotalVirtual:`t`t"             GlobalMemoryStatusEx[7]   " bytes`n"
        . "AvailVirtual:`t`t"             GlobalMemoryStatusEx[8]   " bytes`n`n"
        . "AvailExtendedVirtual:`t`t"     GlobalMemoryStatusEx[9]





/* C++ ==============================================================================
BOOL WINAPI GlobalMemoryStatusEx(
    _Inout_  LPMEMORYSTATUSEX lpBuffer        // (64)             Ptr
);


typedef struct _MEMORYSTATUSEX {
    DWORD     dwLength;                       //  4 =>   0        UInt
    DWORD     dwMemoryLoad;                   //  4 =>   4        UInt
    DWORDLONG ullTotalPhys;                   //  8 =>   8        UInt64
    DWORDLONG ullAvailPhys;                   //  8 =>  16        UInt64
    DWORDLONG ullTotalPageFile;               //  8 =>  24        UInt64
    DWORDLONG ullAvailPageFile;               //  8 =>  32        UInt64
    DWORDLONG ullTotalVirtual;                //  8 =>  40        UInt64
    DWORDLONG ullAvailVirtual;                //  8 =>  48        UInt64
    DWORDLONG ullAvailExtendedVirtual;        //  8 =>  56        UInt64
} MEMORYSTATUSEX, *LPMEMORYSTATUSEX;
================================================================================== */