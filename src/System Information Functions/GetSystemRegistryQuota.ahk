; =================================================================================================
; Function......: GetSystemRegistryQuota
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/ms724387(v=vs.85).aspx
; =================================================================================================
GetSystemRegistryQuota()
{
    if DllCall("Kernel32.dll\GetSystemRegistryQuota", "UInt*", pdwQuotaAllowed, "UInt*", pdwQuotaUsed)
    {
        return { 1: pdwQuotaAllowed, 2 : pdwQuotaUsed }
    }
}
; ===================================================================================

GetSystemRegistryQuota := GetSystemRegistryQuota()

MsgBox, % "pdwQuotaAllowed:`t" GetSystemRegistryQuota[1] " bytes`n"
        . "pdwQuotaUsed:`t"    GetSystemRegistryQuota[2] " bytes"





/* C++ ==============================================================================
BOOL WINAPI GetSystemRegistryQuota(
    _Out_opt_  PDWORD pdwQuotaAllowed,        // UInt*
    _Out_opt_  PDWORD pdwQuotaUsed            // UInt*
);
================================================================================== */