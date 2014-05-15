; =================================================================================================
; Function......: GetIpStatisticsEx
; DLL...........: Iphlpapi.dll
; Library.......: Iphlpapi.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/aa365963(v=vs.85).aspx
; =================================================================================================
GetIpStatisticsEx()
{
    static MIB_IPSTATS, init := VarSetCapacity(MIB_IPSTATS, 92, 0) && NumPut(92, MIB_IPSTATS, "UInt")
    static IPv4 := 2, IPv6 := 23
    DllCall("Iphlpapi.dll\GetIpStatisticsEx", "UInt", &MIB_IPSTATS, "UInt", IPv4)
    return {  1 : NumGet(MIB_IPSTATS,  0, "UInt"),  2 : NumGet(MIB_IPSTATS,  4, "UInt"),  3 : NumGet(MIB_IPSTATS,  8, "UInt")
           ,  4 : NumGet(MIB_IPSTATS, 12, "UInt"),  5 : NumGet(MIB_IPSTATS, 16, "UInt"),  6 : NumGet(MIB_IPSTATS, 20, "UInt")
           ,  7 : NumGet(MIB_IPSTATS, 24, "UInt"),  8 : NumGet(MIB_IPSTATS, 28, "UInt"),  9 : NumGet(MIB_IPSTATS, 32, "UInt")
           , 10 : NumGet(MIB_IPSTATS, 36, "UInt"), 11 : NumGet(MIB_IPSTATS, 40, "UInt"), 12 : NumGet(MIB_IPSTATS, 44, "UInt")
           , 13 : NumGet(MIB_IPSTATS, 48, "UInt"), 14 : NumGet(MIB_IPSTATS, 52, "UInt"), 15 : NumGet(MIB_IPSTATS, 56, "UInt")
           , 16 : NumGet(MIB_IPSTATS, 60, "UInt"), 17 : NumGet(MIB_IPSTATS, 64, "UInt"), 18 : NumGet(MIB_IPSTATS, 68, "UInt")
           , 19 : NumGet(MIB_IPSTATS, 72, "UInt"), 20 : NumGet(MIB_IPSTATS, 76, "UInt"), 21 : NumGet(MIB_IPSTATS, 80, "UInt")
           , 22 : NumGet(MIB_IPSTATS, 84, "UInt"), 23 : NumGet(MIB_IPSTATS, 88, "UInt") }
}
; ===================================================================================

GetIpStatisticsEx := GetIpStatisticsEx()

MsgBox, % "GetIpStatistics function`n"
        . "MIB_IPSTATS structure`n`n"
        . "Forwarding:`t`t"          GetIpStatisticsEx[1]    "`n"
        . "DefaultTTL:`t`t"          GetIpStatisticsEx[2]    "`n"
        . "InReceives:`t`t"          GetIpStatisticsEx[3]    "`n"
        . "InHdrErrors:`t`t"         GetIpStatisticsEx[4]    "`n"
        . "InAddrErrors:`t`t"        GetIpStatisticsEx[5]    "`n"
        . "ForwDatagrams:`t`t"       GetIpStatisticsEx[6]    "`n"
        . "InUnknownProtos:`t`t"     GetIpStatisticsEx[7]    "`n"
        . "InDiscards:`t`t"          GetIpStatisticsEx[8]    "`n"
        . "InDelivers:`t`t`t"        GetIpStatisticsEx[9]    "`n"
        . "OutRequests:`t`t"         GetIpStatisticsEx[10]   "`n"
        . "RoutingDiscards:`t`t"     GetIpStatisticsEx[11]   "`n"
        . "OutDiscards:`t`t"         GetIpStatisticsEx[12]   "`n"
        . "OutNoRoutes:`t`t"         GetIpStatisticsEx[13]   "`n"
        . "ReasmTimeout:`t`t"        GetIpStatisticsEx[14]   "`n"
        . "ReasmReqds:`t`t"          GetIpStatisticsEx[15]   "`n"
        . "ReasmOks:`t`t"            GetIpStatisticsEx[16]   "`n"
        . "ReasmFails:`t`t"          GetIpStatisticsEx[17]   "`n"
        . "FragOks:`t`t`t"           GetIpStatisticsEx[18]   "`n"
        . "FragFails:`t`t`t"         GetIpStatisticsEx[19]   "`n"
        . "FragCreates:`t`t"         GetIpStatisticsEx[20]   "`n"
        . "NumIf:`t`t`t"             GetIpStatisticsEx[21]   "`n"
        . "NumAddr:`t`t"             GetIpStatisticsEx[22]   "`n"
        . "NumRoutes:`t`t"           GetIpStatisticsEx[23]





/* C++ ==============================================================================
DWORD GetIpStatisticsEx(               //                  UInt
    _Out_  PMIB_IPSTATS pStats,        // (92)             UInt
    _In_   DWORD dwFamily              //                  UInt
);


typedef struct _MIB_IPSTATS {
    DWORD dwForwarding;                //  4 =>   0        UInt
    DWORD dwDefaultTTL;                //  4 =>   4        UInt
    DWORD dwInReceives;                //  4 =>   8        UInt
    DWORD dwInHdrErrors;               //  4 =>  12        UInt
    DWORD dwInAddrErrors;              //  4 =>  16        UInt
    DWORD dwForwDatagrams;             //  4 =>  20        UInt
    DWORD dwInUnknownProtos;           //  4 =>  24        UInt
    DWORD dwInDiscards;                //  4 =>  28        UInt
    DWORD dwInDelivers;                //  4 =>  32        UInt
    DWORD dwOutRequests;               //  4 =>  36        UInt
    DWORD dwRoutingDiscards;           //  4 =>  40        UInt
    DWORD dwOutDiscards;               //  4 =>  44        UInt
    DWORD dwOutNoRoutes;               //  4 =>  48        UInt
    DWORD dwReasmTimeout;              //  4 =>  52        UInt
    DWORD dwReasmReqds;                //  4 =>  56        UInt
    DWORD dwReasmOks;                  //  4 =>  60        UInt
    DWORD dwReasmFails;                //  4 =>  64        UInt
    DWORD dwFragOks;                   //  4 =>  68        UInt
    DWORD dwFragFails;                 //  4 =>  72        UInt
    DWORD dwFragCreates;               //  4 =>  76        UInt
    DWORD dwNumIf;                     //  4 =>  80        UInt
    DWORD dwNumAddr;                   //  4 =>  84        UInt
    DWORD dwNumRoutes;                 //  4 =>  88        UInt
} MIB_IPSTATS, *PMIB_IPSTATS;
================================================================================== */