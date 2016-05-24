cd /d "%~dp0"

call set-env.bat


cd %LOCAL_GIT_DIRECTORY%/%GIT_PROJECT%

git status

REM git --help

REM git checkout --help   , git checkout  fic1

git checkout *

pause
