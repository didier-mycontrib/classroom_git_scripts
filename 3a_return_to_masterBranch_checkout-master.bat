cd /d "%~dp0"

call set-env.bat


cd %LOCAL_GIT_DIRECTORY%/%GIT_PROJECT%

REM return to master branch (after commit  on temp branch "myTPn")
git checkout master

pause
