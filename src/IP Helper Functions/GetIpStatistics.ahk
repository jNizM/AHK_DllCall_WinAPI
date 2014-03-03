; =================================================================================================
; Function......: GetIpStatistics
; DLL...........: Iphlpapi.dll
; Library.......: Iphlpapi.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/aa365959(v=vs.85).aspx
; =================================================================================================
GetIpStatistics()
{
    static MIB_IPSTATS, init := VarSetCapacity(MIB_IPSTATS, 92, 0) && NumPut(92, MIB_IPSTATS, "UInt")
    DllCall("Iphlpapi.dll\GetIpStatistics", "UInt", &MIB_IPSTATS)
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

GetIpStatistics := GetIpStatistics()

MsgBox, % "GetIpStatistics function`n"
        . "MIB_IPSTATS structure`n`n"
        . "Forwarding:`t`t"          GetIpStatistics[1]    "`n"
        . "DefaultTTL:`t`t"          GetIpStatistics[2]    "`n"
        . "InReceives:`t`t"          GetIpStatistics[3]    "`n"
        . "InHdrErrors:`t`t"         GetIpStatistics[4]    "`n"
        . "InAddrErrors:`t`t"        GetIpStatistics[5]    "`n"
        . "ForwDatagrams:`t`t"       GetIpStatistics[6]    "`n"
        . "InUnknownProtos:`t`t"     GetIpStatistics[7]    "`n"
        . "InDiscards:`t`t"          GetIpStatistics[8]    "`n"
        . "InDelivers:`t`t`t"        GetIpStatistics[9]    "`n"
        . "OutRequests:`t`t"         GetIpStatistics[10]   "`n"
        . "RoutingDiscards:`t`t"     GetIpStatistics[11]   "`n"
        . "OutDiscards:`t`t"         GetIpStatistics[12]   "`n"
        . "OutNoRoutes:`t`t"         GetIpStatistics[13]   "`n"
        . "ReasmTimeout:`t`t"        GetIpStatistics[14]   "`n"
        . "ReasmReqds:`t`t"          GetIpStatistics[15]   "`n"
        . "ReasmOks:`t`t"            GetIpStatistics[16]   "`n"
        . "ReasmFails:`t`t"          GetIpStatistics[17]   "`n"
        . "FragOks:`t`t`t"           GetIpStatistics[18]   "`n"
        . "FragFails:`t`t`t"         GetIpStatistics[19]   "`n"
        . "FragCreates:`t`t"         GetIpStatistics[20]   "`n"
        . "NumIf:`t`t`t"             GetIpStatistics[21]   "`n"
        . "NumAddr:`t`t"             GetIpStatistics[22]   "`n"
        . "NumRoutes:`t`t"           GetIpStatistics[23]





/* C++ ==============================================================================
DWORD GetIpStatistics(
    _Out_  PMIB_IPSTATS pStats        // (92)             UInt
);


typedef struct _MIB_IPSTATS {
    DWORD dwForwarding;               //  4 =>   0        UInt
    DWORD dwDefaultTTL;               //  4 =>   4        UInt
    DWORD dwInReceives;               //  4 =>   8        UInt
    DWORD dwInHdrErrors;              //  4 =>  12        UInt
    DWORD dwInAddrErrors;             //  4 =>  16        UInt
    DWORD dwForwDatagrams;            //  4 =>  20        UInt
    DWORD dwInUnknownProtos;          //  4 =>  24        UInt
    DWORD dwInDiscards;               //  4 =>  28        UInt
    DWORD dwInDelivers;               //  4 =>  32        UInt
    DWORD dwOutRequests;              //  4 =>  36        UInt
    DWORD dwRoutingDiscards;          //  4 =>  40        UInt
    DWORD dwOutDiscards;              //  4 =>  44        UInt
    DWORD dwOutNoRoutes;              //  4 =>  48        UInt
    DWORD dwReasmTimeout;             //  4 =>  52        UInt
    DWORD dwReasmReqds;               //  4 =>  56        UInt
    DWORD dwReasmOks;                 //  4 =>  60        UInt
    DWORD dwReasmFails;               //  4 =>  64        UInt
    DWORD dwFragOks;                  //  4 =>  68        UInt
    DWORD dwFragFails;                //  4 =>  72        UInt
    DWORD dwFragCreates;              //  4 =>  76        UInt
    DWORD dwNumIf;                    //  4 =>  80        UInt
    DWORD dwNumAddr;                  //  4 =>  84        UInt
    DWORD dwNumRoutes;                //  4 =>  88        UInt
} MIB_IPSTATS, *PMIB_IPSTATS;
================================================================================== */