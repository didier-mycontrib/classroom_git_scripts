cd /d "%~dp0"

call set-env.bat


cd %LOCAL_GIT_DIRECTORY%/%GIT_PROJECT%

git reset HEAD
REM git reset HEAD^ or git reset HEAD~1 , HEAD~2 , HEAD~3 to come back to commit n-1 , n-2 , n-3 (before push !!)

git checkout -- *

pause