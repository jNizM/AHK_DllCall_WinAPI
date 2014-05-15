; =================================================================================================
; Function......: GetPhysicallyInstalledSystemMemory
; DLL...........: Kernel32.dll
; Library.......: Kernel32.lib
; U/ANSI........:
; Author........: jNizM
; Modified......:
; Links.........: http://msdn.microsoft.com/en-us/library/windows/desktop/cc300158(v=vs.85).aspx
; =================================================================================================
GetPhysicallyInstalledSystemMemory()
{
    if DllCall("kernel32.dll\GetPhysicallyInstalledSystemMemory", "UInt64*", TotalMemoryInKilobytes)
    {
        return TotalMemoryInKilobytes
    }
}
; ===================================================================================

MsgBox, % GetPhysicallyInstalledSystemMemory() " KB`n"
        . Round(GetPhysicallyInstalledSystemMemory() / 1024, 2) " MB`n"
        . Round(GetPhysicallyInstalledSystemMemory() / 1024**2, 2) " GB`n"





/* C++ ==============================================================================
BOOL WINAPI GetPhysicallyInstalledSystemMemory(        // UInt
    _Out_  PULONGLONG TotalMemoryInKilobytes           // UInt64*
);
================================================================================== */