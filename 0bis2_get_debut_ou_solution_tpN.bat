cd /d "%~dp0"

call set-env.bat
REM git clone %GIT_REPOSITORY_URL%

set GIT_TAG_TP=TP1_debut

REM set GIT_TAG_TP=TP1_solution

cd %LOCAL_GIT_DIRECTORY%/%GIT_PROJECT%

REM git pull origin master
git checkout tags/%GIT_TAG_TP% *
pause