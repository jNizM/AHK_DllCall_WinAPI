; =================================================================================================
; Function......: GetTcpStatisticsEx
; DLL...........: Iphlpapi.dll
; Library.......: Iphlpapi.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/aa366023(v=vs.85).aspx
; =================================================================================================
GetTcpStatisticsEx()
{
    static MIB_TCPSTATS, init := VarSetCapacity(MIB_TCPSTATS, 60, 0) && NumPut(60, MIB_TCPSTATS, "UInt")
    static IPv4 := 2, IPv6 := 23
    DllCall("Iphlpapi.dll\GetTcpStatisticsEx", "UInt", &MIB_TCPSTATS, "UInt", IPv4)
    return {  1 : NumGet(MIB_TCPSTATS,  0, "UInt"),  2 : NumGet(MIB_TCPSTATS,  4, "UInt"),  3 : NumGet(MIB_TCPSTATS,  8, "UInt")
           ,  4 : NumGet(MIB_TCPSTATS, 12, "UInt"),  5 : NumGet(MIB_TCPSTATS, 16, "UInt"),  6 : NumGet(MIB_TCPSTATS, 20, "UInt")
           ,  7 : NumGet(MIB_TCPSTATS, 24, "UInt"),  8 : NumGet(MIB_TCPSTATS, 28, "UInt"),  9 : NumGet(MIB_TCPSTATS, 32, "UInt")
           , 10 : NumGet(MIB_TCPSTATS, 36, "UInt"), 11 : NumGet(MIB_TCPSTATS, 40, "UInt"), 12 : NumGet(MIB_TCPSTATS, 44, "UInt")
           , 13 : NumGet(MIB_TCPSTATS, 48, "UInt"), 14 : NumGet(MIB_TCPSTATS, 52, "UInt"), 15 : NumGet(MIB_TCPSTATS, 56, "UInt") }
}
; ===================================================================================

GetTcpStatisticsEx := GetTcpStatisticsEx()

MsgBox, % "GetTcpStatistics function`n"
        . "MIB_TCPSTATS structure`n`n"
        . "RtoAlgorithm:`t`t"     GetTcpStatisticsEx[1]    "`n"
        . "RtoMin:`t`t`t"         GetTcpStatisticsEx[2]    "`n"
        . "RtoMax:`t`t`t"         GetTcpStatisticsEx[3]    "`n"
        . "MaxConn:`t`t`t"        GetTcpStatisticsEx[4]    "`n"
        . "ActiveOpens:`t`t"      GetTcpStatisticsEx[5]    "`n"
        . "PassiveOpens:`t`t"     GetTcpStatisticsEx[6]    "`n"
        . "AttemptFails:`t`t"     GetTcpStatisticsEx[7]    "`n"
        . "EstabResets:`t`t"      GetTcpStatisticsEx[8]    "`n"
        . "CurrEstab:`t`t`t"      GetTcpStatisticsEx[9]    "`n"
        . "InSegs:`t`t`t"         GetTcpStatisticsEx[10]   "`n"
        . "OutSegs:`t`t`t"        GetTcpStatisticsEx[11]   "`n"
        . "RetransSegs:`t`t"      GetTcpStatisticsEx[12]   "`n"
        . "InErrs:`t`t`t"         GetTcpStatisticsEx[13]   "`n"
        . "OutRsts:`t`t`t"        GetTcpStatisticsEx[14]   "`n"
        . "NumConns:`t`t"         GetTcpStatisticsEx[15]



/* C++ ==============================================================================
DWORD GetTcpStatisticsEx(
    _Out_  PMIB_TCPSTATS pStats,        // (60)             UInt
    _In_   DWORD dwFamily               //                  UInt
);


typedef struct _MIB_TCPSTATS {
    DWORD dwRtoAlgorithm;               //  4 =>   0        UInt
    DWORD dwRtoMin;                     //  4 =>   4        UInt
    DWORD dwRtoMax;                     //  4 =>   8        UInt
    DWORD dwMaxConn;                    //  4 =>  12        UInt
    DWORD dwActiveOpens;                //  4 =>  16        UInt
    DWORD dwPassiveOpens;               //  4 =>  20        UInt
    DWORD dwAttemptFails;               //  4 =>  24        UInt
    DWORD dwEstabResets;                //  4 =>  28        UInt
    DWORD dwCurrEstab;                  //  4 =>  32        UInt
    DWORD dwInSegs;                     //  4 =>  36        UInt
    DWORD dwOutSegs;                    //  4 =>  40        UInt
    DWORD dwRetransSegs;                //  4 =>  44        UInt
    DWORD dwInErrs;                     //  4 =>  48        UInt
    DWORD dwOutRsts;                    //  4 =>  52        UInt
    DWORD dwNumConns;                   //  4 =>  56        UInt
} MIB_TCPSTATS, *PMIB_TCPSTATS;
================================================================================== */