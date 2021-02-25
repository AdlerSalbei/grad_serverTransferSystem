@echo off

if exist a3 (
  rmdir a3
)
mklink /j a3 include\a3

mkdir x
mkdir x\grad_servertransfersystem
if exist x\grad_servertransfersystem\addons (
  rmdir x\grad_servertransfersystem\addons
)
mklink /j x\grad_servertransfersystem\addons addons

tools\hemtt build --force --release
set BUILD_STATUS=%errorlevel%

rmdir a3
rmdir x\grad_servertransfersystem\addons
rmdir x\grad_servertransfersystem
rmdir x

if %BUILD_STATUS% neq 0 (
  echo Build failed
  exit /b %errorlevel%
) else (
  echo Build successful
  EXIT
)