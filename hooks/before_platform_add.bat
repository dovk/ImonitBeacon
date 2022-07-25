@echo on
rem                     *************************
rem                     Before platform add hook
rem                     *************************
@echo off

call rmdir  %UserProfile%\WebstormProjects\imonitBeacon\node_modules\ionic-angular\fonts
call md   %UserProfile%\WebstormProjects\imonitBeacon\node_modules\ionic-angular\fonts
call copy %UserProfile%\WebstormProjects\imonitBeacon\src\assets\fonts\*.* %UserProfile%\WebstormProjects\imonitBeacon\node_modules\ionic-angular\fonts\

call rmdir  %UserProfile%\WebstormProjects\imonitBeacon\www\assets\fonts
call md   %UserProfile%\WebstormProjects\imonitBeacon\www\assets\fonts
call copy %UserProfile%\WebstormProjects\imonitBeacon\src\assets\fonts\*.* %UserProfile%\WebstormProjects\imonitBeacon\www\assets\fonts\

call rmdir  %UserProfile%\WebstormProjects\imonitBeacon\www\.well-known
call md   %UserProfile%\WebstormProjects\imonitBeacon\www\.well-known
call md   %UserProfile%\WebstormProjects\imonitBeacon\www\.well-known\acme-challenge
call copy %UserProfile%\WebstormProjects\imonitBeacon\src\assets\data\.well-known\acme-challenge\*.* %UserProfile%\WebstormProjects\imonitBeacon\www\.well-known\acme-challenge
call copy %UserProfile%\WebstormProjects\imonitBeacon\src\assets\data\.well-known\pki-validation\*.* %UserProfile%\WebstormProjects\imonitBeacon\www\.well-known\pki-validation
