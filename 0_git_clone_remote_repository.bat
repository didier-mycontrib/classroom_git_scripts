cd /d "%~dp0"

call set-env.bat
git clone %GIT_REPOSITORY_URL%

cd %LOCAL_GIT_DIRECTORY%/%GIT_PROJECT%

REM git pull origin master
REM git checkout *
pause