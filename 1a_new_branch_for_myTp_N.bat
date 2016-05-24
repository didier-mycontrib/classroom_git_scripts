cd /d "%~dp0"


call set-env.bat


cd %LOCAL_GIT_DIRECTORY%/%GIT_PROJECT%


set MY_TP_N=myTP1

REM set MY_TP_N=myTP2

REM set MY_TP_N=myTPn


REM création d'une nouvelle branche (pour notre version du TP N) et se placer dessus:

git checkout -b %MY_TP_N%

pause
