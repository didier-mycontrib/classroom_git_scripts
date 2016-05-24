cd /d "%~dp0"
call set-env.bat
cd %LOCAL_GIT_DIRECTORY%/%GIT_PROJECT%
git status
pause
