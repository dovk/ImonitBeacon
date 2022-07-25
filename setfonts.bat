@echo on
rem ....................Start SETFONTS
@echo off

call del %UserProfile%\WebstormProjects\imonitBeacon\src\assets\data\config.xml
call copy %UserProfile%\WebstormProjects\imonitBeacon\config.xml   %UserProfile%\WebstormProjects\imonitBeacon\src\assets\data\

call del %UserProfile%\WebstormProjects\imonitBeacon\node_modules\@ionic\app-scripts\config\copy.* /s /f /q
call copy %UserProfile%\WebstormProjects\imonitBeacon\config\copy.*  %UserProfile%\WebstormProjects\imonitBeacon\node_modules\@ionic\app-scripts\config\
call del %UserProfile%\WebstormProjects\imonitBeacon\node_modules\@ionic\app-scripts\config\webpack.* /s /f /q
call copy %UserProfile%\WebstormProjects\imonitBeacon\config\webpack.*  %UserProfile%\WebstormProjects\imonitBeacon\node_modules\@ionic\app-scripts\config\

call del %UserProfile%\WebstormProjects\imonitBeacon\node_modules\@ionic\app-scripts\config\sass.* /s /f /q
call copy %UserProfile%\WebstormProjects\imonitBeacon\config\sass.*  %UserProfile%\WebstormProjects\imonitBeacon\node_modules\@ionic\app-scripts\config\

call del %UserProfile%\WebstormProjects\imonitBeacon\node_modules\ionic-angular\fonts\*.* /s /f /q
call copy %UserProfile%\WebstormProjects\imonitBeacon\src\assets\fonts\*.*  %UserProfile%\WebstormProjects\imonitBeacon\node_modules\ionic-angular\fonts\

call del %UserProfile%\WebstormProjects\imonitBeacon\node_modules\ionicons\dist\fonts\*.* /s /f /q
call copy %UserProfile%\WebstormProjects\imonitBeacon\src\assets\fonts\*.*  %UserProfile%\WebstormProjects\imonitBeacon\node_modules\ionicons\dist\fonts\

call del %UserProfile%\WebstormProjects\imonitBeacon\www\assets\fonts\*.* /s /f /q
call copy %UserProfile%\WebstormProjects\imonitBeacon\src\assets\fonts\*.*  %UserProfile%\WebstormProjects\imonitBeacon\www\assets\fonts\

call del %UserProfile%\WebstormProjects\imonitBeacon\www\assets\data\css\*.* /s /f /q

call del %UserProfile%\WebstormProjects\imonitBeacon\platforms\android\google-services.json /s /f /q
call copy %UserProfile%\WebstormProjects\imonitBeacon\google-services.json       %UserProfile%\WebstormProjects\imonitBeacon\platforms\android\

call del %UserProfile%\WebstormProjects\imonitBeacon\platforms\ios\GoogleService-Info.plist /s /f /q
call copy %UserProfile%\WebstormProjects\imonitBeacon\GoogleService-Info.plist   %UserProfile%\WebstormProjects\imonitBeacon\platforms\ios\

call del %UserProfile%\WebstormProjects\imonitBeacon\platforms\android\*.cer /s /f /q
call copy %UserProfile%\WebstormProjects\imonitBeacon\*.cer        %UserProfile%\WebstormProjects\imonitBeacon\platforms\android\

call del %UserProfile%\WebstormProjects\imonitBeacon\node_modules\@schematics\angular\application\files\__sourcedir__\polyfills.ts /s /f /q
call copy %UserProfile%\WebstormProjects\imonitBeacon\polyfills.ts %UserProfile%\WebstormProjects\imonitBeacon\node_modules\@schematics\angular\application\files\__sourcedir__\polyfills.ts

call del %UserProfile%\WebstormProjects\imonitBeacon\www\cors.json /s /f /q
call copy %UserProfile%\WebstormProjects\imonitBeacon\cors.json            %UserProfile%\WebstormProjects\imonitBeacon\www\

call del %UserProfile%\WebstormProjects\imonitBeacon\www\firebase.json /s /f /q
call copy %UserProfile%\WebstormProjects\imonitBeacon\firebase.json        %UserProfile%\WebstormProjects\imonitBeacon\www\

call del %UserProfile%\WebstormProjects\imonitBeacon\node_modules\@ionic\app-scripts\dist\sass.js /s /f /q
call copy %UserProfile%\WebstormProjects\imonitBeacon\sass.js %UserProfile%\WebstormProjects\imonitBeacon\node_modules\@ionic\app-scripts\dist\

rem call del %UserProfile%\WebstormProjects\imonitBeacon\platforms\android\CordovaLib\AndroidManifest.xml
rem call del %UserProfile%\WebstormProjects\imonitBeacon\platforms\android\CordovaLib\build\intermediates\aapt_friendly_merged_manifests\release\processReleaseManifest\aapt\AndroidManifest.xml
rem call del %UserProfile%\WebstormProjects\imonitBeacon\platforms\android\CordovaLib\build\intermediates\aapt_friendly_merged_manifests\debug\processDebugManifest\aapt\AndroidManifest.xml
rem call copy %UserProfile%\WebstormProjects\imonitBeacon\src\assets\data\CordovaLib\AndroidManifest.xml %UserProfile%\WebstormProjects\imonitBeacon\platforms\android\CordovaLib
rem call copy %UserProfile%\WebstormProjects\imonitBeacon\src\assets\data\CordovaLib\AndroidManifest.xml %UserProfile%\WebstormProjects\imonitBeacon\platforms\android\CordovaLib\build\intermediates\aapt_friendly_merged_manifests\release\processReleaseManifest\aapt
rem call copy %UserProfile%\WebstormProjects\imonitBeacon\src\assets\data\CordovaLib\AndroidManifest.xml %UserProfile%\WebstormProjects\imonitBeacon\platforms\android\CordovaLib\build\intermediates\aapt_friendly_merged_manifests\debug\processDebugManifest\aapt

@echo on
rem ....................End SETFONTS
@echo off
