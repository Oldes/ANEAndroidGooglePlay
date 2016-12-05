@echo off

jar cvf AndroidGooglePlay.jar ANEAndroidGooglePlay-eclipes\bin\classes\*

MKDIR AndroidGooglePlay
MOVE /Y AndroidGooglePlay.jar AndroidGooglePlay/
CD AndroidGooglePlay
jar -xvf  AndroidGooglePlay.jar
DEL AndroidGooglePlay.jar
RD  /S /Q META-INF

MKDIR classes
MOVE /Y ANEAndroidGooglePlay-eclipes/bin/classes/com classes/
CD classes

jar cvf AndroidGooglePlay.jar *
MOVE /Y AndroidGooglePlay.jar ../../

CD ../../

RD  /S /Q AndroidGooglePlay
