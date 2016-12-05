:: Path to Flex SDK
call ..\setup.bat

@set PASS=none

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

call clean.bat

mkdir src\assets
copy "..\01-ANEAndroidGooglePlay-swc\com.amanitadesign.AndroidGooglePlay.swc" src\assets

xcopy /S /Y res\* src\assets\platform\Android-ARM\

mkdir src\assets\swc-contents
pushd src\assets\swc-contents
JAR xf ..\com.amanitadesign.AndroidGooglePlay.swc catalog.xml library.swf
popd

mkdir src\assets\platform
mkdir src\assets\platform\Android-ARM

copy "..\02-ANEAndroidGooglePlay\AndroidGooglePlay.jar" src\assets\platform\Android-ARM
copy src\assets\swc-contents\library.swf src\assets\platform\Android-ARM

@java -jar "%AIR_SDK%\lib\adt.jar" -package        ^
    -target ane ANEAndroidGooglePlay.ane src\extension.xml	^
    -swc src\assets\com.amanitadesign.AndroidGooglePlay.swc	^
    -platform Android-ARM                               ^
    -platformoptions  src\platform-android.xml          ^
    -C src\assets\platform\Android-ARM .

RD  /S /Q .\src\assets

