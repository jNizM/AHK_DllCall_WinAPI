; =================================================================================================
; Function......: GetUdpStatistics
; DLL...........: Iphlpapi.dll
; Library.......: Iphlpapi.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/aa366029(v=vs.85).aspx
; AHK =============================================================================================
GetUdpStatistics()
{
    static MIB_UDPSTATS, init := VarSetCapacity(MIB_UDPSTATS, 20, 0) && NumPut(20, MIB_UDPSTATS, "UInt")
    DllCall("Iphlpapi.dll\GetUdpStatistics", "UInt", &MIB_UDPSTATS)
    return, {  0 : NumGet(MIB_UDPSTATS,  0, "UInt"),  1 : NumGet(MIB_UDPSTATS,  4, "UInt"),  2 : NumGet(MIB_UDPSTATS,  8, "UInt")
            ,  3 : NumGet(MIB_UDPSTATS, 12, "UInt"),  4 : NumGet(MIB_UDPSTATS, 16, "UInt") }
}
; ===================================================================================

GUPDS := GetUdpStatistics()

MsgBox, % "GetUdpStatistics function`n"
        . "MIB_UDPSTATS structure`n`n"
        . "InDatagrams:`t`t"           GUPDS[0]  "`n"
        . "NoPorts:`t`t`t"             GUPDS[1]  "`n"
        . "InErrors:`t`t`t"            GUPDS[2]  "`n"
        . "OutDatagrams:`t`t"          GUPDS[3]  "`n"
        . "NumAddrs:`t`t"              GUPDS[4]



/* C++ ==============================================================================
DWORD GetUdpStatistics(
    _Out_  PMIB_UDPSTATS pStats        // UInt
);


typedef struct _MIB_UDPSTATS {
    DWORD dwInDatagrams;               //  0 (20)          UInt
    DWORD dwNoPorts;                   //  4 =>   4        UInt
    DWORD dwInErrors;                  //  4 =>   8        UInt
    DWORD dwOutDatagrams;              //  4 =>  12        UInt
    DWORD dwNumAddrs;                  //  4 =>  16        UInt
} MIB_UDPSTATS, *PMIB_UDPSTATS;
================================================================================== */