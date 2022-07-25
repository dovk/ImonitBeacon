@echo on
rem                     *************************
rem                     After platform add hook
rem                     *************************
@echo off
call md %UserProfile%\WebstormProjects\imonitBeacon\platforms\android\drawable
call copy %UserProfile%\WebstormProjects\imonitBeacon\src\assets\img\icon.png %UserProfile%\WebstormProjects\imonitBeacon\platforms\android\drawable\

call md %UserProfile%\WebstormProjects\imonitBeacon\platforms\android\mipmap
call copy %UserProfile%\WebstormProjects\imonitBeacon\src\assets\img\icon.png %UserProfile%\WebstormProjects\imonitBeacon\platforms\android\mipmap\

call md %UserProfile%\WebstormProjects\imonitBeacon\platforms\android\app\src\main\res\drawable
call copy %UserProfile%\WebstormProjects\imonitBeacon\src\assets\img\icon.png %UserProfile%\WebstormProjects\imonitBeacon\platforms\android\app\src\main\res\drawable\

call md %UserProfile%\WebstormProjects\imonitBeacon\platforms\android\app\src\main\res\mipmap
call copy %UserProfile%\WebstormProjects\imonitBeacon\src\assets\img\icon.png %UserProfile%\WebstormProjects\imonitBeacon\platforms\android\app\src\main\res\mipmap\

call copy %UserProfile%\WebstormProjects\imonitBeacon\src\assets\data\local.properties %UserProfile%\WebstormProjects\imonitBeacon\platforms\android\

call copy %UserProfile%\WebstormProjects\imonitBeacon\node_modules\ionic-angular\polyfills\polyfills.js %UserProfile%\WebstormProjects\imonitBeacon\platforms\android\app\src\main\assets\www\build
call copy %UserProfile%\WebstormProjects\imonitBeacon\node_modules\sw-toolbox\sw-toolbox.js             %UserProfile%\WebstormProjects\imonitBeacon\platforms\android\app\src\main\assets\www\build
