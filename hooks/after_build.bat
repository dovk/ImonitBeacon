@echo on
rem                     *************************
rem                     After build hook
rem                     *************************
@echo off
call node copy.config.extra.js
call copy %UserProfile%\WebstormProjects\imonitBeacon\node_modules\ionic-angular\polyfills\polyfills.js %UserProfile%\WebstormProjects\imonitBeacon\platforms\android\app\src\main\assets\www\build
call copy %UserProfile%\WebstormProjects\imonitBeacon\node_modules\sw-toolbox\sw-toolbox.js             %UserProfile%\WebstormProjects\imonitBeacon\platforms\android\app\src\main\assets\www\build
