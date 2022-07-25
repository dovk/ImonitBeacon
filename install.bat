@echo on
rem                     *************************
rem                     Install (start)
rem                     *************************
@echo off

call del package-lock.json /s /q /f
call npm cache clean --force
rem call npm cache verify
rem call del "%appdata%\npm-cache"   /s /q /f
rem call del "%UserProfile%\.config"  /s /q /f
rem call del "%UserProfile%\.cordova" /s /q /f
rem call del "%UserProfile%\.gradle"  /s /q /f
rem call del "%UserProfile%\AppData\Roaming\npm-cache"   /s /q /f
call del "%UserProfile%\WebstormProjects\imonitBeacon\platforms"  /s /q /f
call del "%UserProfile%\WebstormProjects\imonitBeacon\node_modules" /s /q /f
call del "%UserProfile%\WebstormProjects\imonitBeacon\.sourcemaps" /s /q /f
call del "%UserProfile%\WebstormProjects\imonitBeacon\www"    /s /q /f

@echo on
rem                     *************************
rem                     npm install
rem                     *************************
@echo off
call npm config -g set prefix "%AppData%\npm"
call npm config -g set cache "%AppData%\npm-cache"
call install-core
call npm install
call npm audit fix
call "%ProgramFiles%"\nodejs\nodevars.bat

@echo on
rem                     *************************
rem                     end install
rem                     *************************
@echo off

call rmdir %UserProfile%\WebstormProjects\imonitBeacon\platforms  /s /q

call setfonts
call serve
