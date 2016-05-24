cd /d "%~dp0"

call set-env.bat



cd %LOCAL_GIT_DIRECTORY%/%GIT_PROJECT%

REM git log

REM -p avec details

REM --stat (resumé)

REM git log -p

git log --stat

pause