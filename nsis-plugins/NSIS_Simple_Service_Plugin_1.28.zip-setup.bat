REM -*- bat -*-
@Echo on

set stage=%cd%\NSIS_Simple_Service_Plugin_1.28-odXihBhRVpA4
mkdir "%stage%"
.\unzip -q -n NSIS_Simple_Service_Plugin_1.28.zip -d "%stage%"

cd "%programfiles%\NSIS"

if exist Unicode\Plugins\nul (
   copy /y "%stage%\SimpleSC.dll" "%programfiles%\NSIS\Unicode\Plugins"
)

if exist Plugins\nul (
   copy /y "%stage%\SimpleSC.dll" "%programfiles%\NSIS\Plugins"
)

rmdir /q/s "%stage%"