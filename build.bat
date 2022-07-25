@echo on
rem                     *************************
rem                     Start - cleanup
rem                     *************************
@echo off
call del "%UserProfile%\WebstormProjects\imonitBeacon\platforms"  /s /q /f 1>nul

call del package-lock.json /s /q /f
rem call npm cache clean --force
rem call npm cache verify
rem call del "%appdata%\npm-cache"   /s /q /f
rem plugins are not deleted, only at init - if you need to delete, do so manually
rem call del imonit.apk  /s /q /f 1>nul
call install-core
@echo on
rem                     *************************
rem                     Removing platform
rem                     *************************
@echo off

call cordova telemetry on
call ionic cordova platform rm android
call ionic cordova platform rm ios

@echo on
rem                     *************************
rem                     Adding platform
rem                     *************************
@echo off

call cordova telemetry on
call ionic cordova platform add android@8

@echo on
rem                     *************************
rem                     Building platform
rem                     *************************
@echo off
call ionic cordova build android --prod --release --aot=false --build-optimizer=false

rem :SERVE
rem @echo on
rem                      *************************
rem                      Continue to Android Studio
rem                      *************************
rem pause
rem :EXIT
@echo on
rem                     *************************
rem                     Building bundle
rem                     *************************
@echo off
call cd platforms
call cd android
call gradlew bundle
call cd %UserProfile%\WebstormProjects\imonitBeacon
if exist "%UserProfile%\WebstormProjects\imonitBeacon\platforms\android\app\build\outputs\bundle\release\app.aab" goto SERVE

@echo on
rem                      *************************
rem                      :( Sorry - bundle not built
rem                      *************************
pause
@echo off
goto EXIT

:SERVE
@echo on
rem                      *************************
rem                      GOOD LUCK!
rem                      *************************
@echo off
set url=https://play.google.com/console/u/0/developers/6976316390143823905/app/4972662782824161285/tracks/4698846215459854923/releases/341/prepare
start chrome %url%

:EXIT
