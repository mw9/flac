# Microsoft Developer Studio Project File - Name="libFLAC++" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=libFLAC++ - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "libFLAC++.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "libFLAC++.mak" CFG="libFLAC++ - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "libFLAC++ - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "libFLAC++ - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "libFLAC++"
# PROP Scc_LocalPath "..\.."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "libFLAC++ - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\obj\lib"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /MD /Ze /W3 /GR /GX /O2 /I ".\include" /I "..\..\include" /D "NDEBUG" /D "FLACPP_API_EXPORTS" /D "_WINDOWS" /D "_WINDLL" /D "WIN32" /D "_USRDLL" /FR /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG" /d "_USRDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:I386
# ADD LINK32 ..\..\obj\lib\libFLAC.lib /nologo /subsystem:windows /dll /machine:I386 /out:"..\..\obj\bin/libFLAC++.dll"

!ELSEIF  "$(CFG)" == "libFLAC++ - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\obj\lib"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /MDd /Ze /W3 /Gm /GR /GX /ZI /Od /I ".\include" /I "..\..\include" /D "_DEBUG" /D "_CHATTER" /D "FLACPP_API_EXPORTS" /D "_WINDOWS" /D "_WINDLL" /D "WIN32" /D "_USRDLL" /FR /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG" /d "_USRDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 ..\..\obj\lib\libFLAC.lib /nologo /subsystem:windows /dll /debug /machine:I386 /out:"..\..\obj\bin/libFLAC++.dll" /pdbtype:sept

!ENDIF 

# Begin Target

# Name "libFLAC++ - Win32 Release"
# Name "libFLAC++ - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cc"
# Begin Source File

SOURCE=.\file_decoder.cpp
# End Source File
# Begin Source File

SOURCE=.\file_encoder.cpp
# End Source File
# Begin Source File

SOURCE=.\metadata.cpp
# End Source File
# Begin Source File

SOURCE=.\seekable_stream_decoder.cpp
# End Source File
# Begin Source File

SOURCE=.\seekable_stream_encoder.cpp
# End Source File
# Begin Source File

SOURCE=.\stream_decoder.cpp
# End Source File
# Begin Source File

SOURCE=.\stream_encoder.cpp
# End Source File
# End Group
# Begin Group "Private Header Files"

# PROP Default_Filter ""
# End Group
# Begin Group "Protected Header Files"

# PROP Default_Filter ""
# End Group
# Begin Group "Public Header Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE="..\..\include\FLAC++\all.h"
# End Source File
# Begin Source File

SOURCE="..\..\include\FLAC++\decoder.h"
# End Source File
# Begin Source File

SOURCE="..\..\include\FLAC++\encoder.h"
# End Source File
# Begin Source File

SOURCE="..\..\include\FLAC++\export.h"
# End Source File
# Begin Source File

SOURCE="..\..\include\FLAC++\metadata.h"
# End Source File
# End Group
# End Target
# End Project