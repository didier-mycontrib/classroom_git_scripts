cd /d "%~dp0"

call set-env.bat
REM git clone %GIT_REPOSITORY_URL%

cd %LOCAL_GIT_DIRECTORY%/%GIT_PROJECT%

git pull origin master
git checkout *
pause