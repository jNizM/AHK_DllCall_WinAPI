; =================================================================================================
; Function......: GlobalMemoryStatusEx
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/aa366589(v=vs.85).aspx
; AHK =============================================================================================
GlobalMemoryStatusEx()
{
    static MEMORYSTATUSEX, init := VarSetCapacity(MEMORYSTATUSEX, 64, 0) && NumPut(64, MEMORYSTATUSEX, "UInt")
    if (DllCall("kernel32.dll\GlobalMemoryStatusEx", "Ptr", &MEMORYSTATUSEX))
    {
		return, { 0 : NumGet(MEMORYSTATUSEX,  0, "UInt"),  1 : NumGet(MEMORYSTATUSEX,  4, "UInt")
				, 2 : NumGet(MEMORYSTATUSEX,  8, "UInt64"), 3 : NumGet(MEMORYSTATUSEX, 16, "UInt64")
				, 4 : NumGet(MEMORYSTATUSEX, 24, "UInt64"), 5 : NumGet(MEMORYSTATUSEX, 32, "UInt64")
				, 6 : NumGet(MEMORYSTATUSEX, 40, "UInt64"), 7 : NumGet(MEMORYSTATUSEX, 48, "UInt64")
				, 8 : NumGet(MEMORYSTATUSEX, 56, "UInt64") }
    }
}
; ===================================================================================

GMSEx := GlobalMemoryStatusEx()

MsgBox, % "GlobalMemoryStatusEx function`n"
        . "MEMORYSTATUSEX structure`n`n"
        . "Lenght:`t`t`t"              GMSEx[0] "`n`n"
        . "MemoryLoad:`t`t"            GMSEx[1] " %`n`n"
        . "TotalPhys:`t`t`t"           GMSEx[2] " bytes`n"
        . "AvailPhys:`t`t`t"           GMSEx[3] " bytes`n`n"
        . "TotalPageFile:`t`t"         GMSEx[4] " bytes`n"
        . "AvailPageFile:`t`t"         GMSEx[5] " bytes`n`n"
        . "TotalVirtual:`t`t"          GMSEx[6] " bytes`n"
        . "AvailVirtual:`t`t"          GMSEx[7] " bytes`n`n"
        . "AvailExtendedVirtual:`t`t"  GMSEx[8]



/* C++ ==============================================================================
BOOL WINAPI GlobalMemoryStatusEx(
	_Inout_  LPMEMORYSTATUSEX lpBuffer        // Ptr
);

typedef struct _MEMORYSTATUSEX {
    DWORD     dwLength;                       //  0 (64)          UInt
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