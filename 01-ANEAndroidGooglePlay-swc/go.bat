:: Path to AIR (Flex) SDK
call ..\setup.bat

:validation
@if not exist "%AIR_SDK%\bin" goto flexsdk
@goto succeed


:flexsdk
@echo.
@echo ERROR: incorrect path to Flex SDK
@echo.
@echo Looking for: %AIR_SDK%\bin
@echo.
@if %PAUSE_ERRORS%==1 pause
@exit

:succeed

@IF EXIST com.amanitadesign.AndroidGooglePlay.swc DEL com.amanitadesign.AndroidGooglePlay.swc

@echo.
"%AIR_SDK%"/bin/acompc -namespace http://amanita-design.net/extensions src/manifest.xml ^
    -source-path src	^
    -include-classes	^
    com.amanitadesign.AndroidGooglePlay	^
    -output=com.amanitadesign.AndroidGooglePlay.swc

