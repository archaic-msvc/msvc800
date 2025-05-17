@rem Set the root of the MSVC installation based on the script's location (https://github.com/itsmattkc/MSVC420/blob/master/bin/VCVARS32.BAT)
@SET MSDevDir=%~dp0\..\..

@SET VSINSTALLDIR=%MSDevDir%
@SET VCINSTALLDIR=%MSDevDir%\VC
@SET FrameworkDir=c:\Windows\Microsoft.NET\Framework
@SET FrameworkVersion=v2.0.50727
@SET FrameworkSDKDir=%MSDevDir%\SDK\v2.0
@if "%VSINSTALLDIR%"=="" goto error_no_VSINSTALLDIR
@if "%VCINSTALLDIR%"=="" goto error_no_VCINSTALLDIR

@echo Setting environment for using Microsoft Visual Studio 2005 x86 tools.

@rem
@rem Root of Visual Studio IDE installed files.
@rem
@set DevEnvDir=%MSDevDir%\Common7\IDE

@set PATH=%MSDevDir%\Common7\IDE;%MSDevDir%\VC\BIN;%MSDevDir%\Common7\Tools;%MSDevDir%\Common7\Tools\bin;%MSDevDir%\VC\PlatformSDK\bin;%MSDevDir%\SDK\v2.0\bin;c:\Windows\Microsoft.NET\Framework\v2.0.50727;%MSDevDir%\VC\VCPackages;%PATH%
@set INCLUDE=%MSDevDir%\VC\ATLMFC\INCLUDE;%MSDevDir%\VC\INCLUDE;%MSDevDir%\VC\PlatformSDK\include;%INCLUDE%
@set LIB=%MSDevDir%\VC\ATLMFC\LIB;%MSDevDir%\VC\LIB;%MSDevDir%\VC\PlatformSDK\lib;%MSDevDir%\SDK\v2.0\lib;%LIB%
@set LIBPATH=c:\Windows\Microsoft.NET\Framework\v2.0.50727;%MSDevDir%\VC\ATLMFC\LIB

@goto end

:error_no_VSINSTALLDIR
@echo ERROR: VSINSTALLDIR variable is not set.
@goto end

:error_no_VCINSTALLDIR
@echo ERROR: VCINSTALLDIR variable is not set.
@goto end

:end
