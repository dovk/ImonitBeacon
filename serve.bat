rem                     *************************
rem                     Serve
rem                     *************************

rem call del %UserProfile%\WebstormProjects\imonit-qa\www  /s /q /f
rem call copy %UserProfile%\WebstormProjects\imonitapp\www\*.*  %UserProfile%\WebstormProjects\imonit-qa\www

call del "%UserProfile%\WebstormProjects\imonitBeacon\www"  /s /q /f
call setfonts
call npm run ionic:serve --host=127.0.0.1 --port=8100
