; ===================================================================================
; Name..........: GetVersion
; Author........: jNizM
; Modified......:
; Links.........: GetVersion function
;                 http://msdn.microsoft.com/en-us/library/windows/desktop/ms724439(v=vs.85).aspx
; AHK ===============================================================================
GetVersion(Version = 1)
{
    return, (Version = 1) ? LOBYTE(LOWORD(DllCall("Kernel32.dll\GetVersion")))
          : (Version = 2) ? HIBYTE(LOWORD(DllCall("Kernel32.dll\GetVersion")))
          : (Version = 3) ? HIWORD(DllCall("Kernel32.dll\GetVersion")) : ""
}
LOWORD(l)
{
    return l&0xffff
}
HIWORD(l)
{
    return (l>>16)&0xffff
}
LOBYTE(w)
{
    return w&0xff
}
HIBYTE(w)
{
    return (w>>8)&0xff
}
; ===================================================================================

MsgBox, % "Major:`t" GetVersion(1) "`n"
        . "Minor:`t" GetVersion(2) "`n"
        . "Build:`t" GetVersion(3)


MajorVersion := DllCall("Kernel32.dll\GetVersion") & 0xff
MinorVersion := DllCall("Kernel32.dll\GetVersion") >> 8 & 0xff
BuildVersion := DllCall("Kernel32.dll\GetVersion") >> 16 & 0xffff

MsgBox, % MajorVersion "." MinorVersion "." BuildVersion



/* C++ ==============================================================================
DWORD WINAPI GetVersion(void);


void main()
{
    DWORD dwVersion = 0; 
    DWORD dwMajorVersion = 0;
    DWORD dwMinorVersion = 0; 
    DWORD dwBuild = 0;

    dwVersion = GetVersion();
 
    // Get the Windows version.
    dwMajorVersion = (DWORD)(LOBYTE(LOWORD(dwVersion)));
    dwMinorVersion = (DWORD)(HIBYTE(LOWORD(dwVersion)));

    // Get the build number.
    if (dwVersion < 0x80000000)              
        dwBuild = (DWORD)(HIWORD(dwVersion));

    printf("Version is %d.%d (%d)\n", dwMajorVersion, dwMinorVersion, dwBuild);
}
 ================================================================================= */