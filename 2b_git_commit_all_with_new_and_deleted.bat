cd /d "%~dp0"
call set-env.bat
cd %LOCAL_GIT_DIRECTORY%/%GIT_PROJECT%

REM bien penser a lancer prealablement "mvn clean" ou bien avoir regle .gitignore

git add *
git status

REM git commit gere tous les fichiers ajoutés (et supprimera de l'index ceux qui nexistent plus si option -a)

git commit -m "yet another commit message" -a

REM git commit --help
pause
