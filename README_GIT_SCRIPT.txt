Cette collection de script GIT est prevue pour accompagner
les TPs au sein d'une formation informatique

Elements supposés installés dans la salle de cours:
===================================================
* GIT en ligne de commande sous windows (ou sous linux)
* Un editeur de fichier annexe (ex: Notepad++ ou ....)
* D'autres éléments selon le contexte (navigateur web , IDE "eclipse ou autre" , maven ou npm ou ...)

Liste des GIT_PROJECT associés à des cours/formations : 
=====================================================
https://github.com/didier-mycontrib?tab=repositories

Elements de Tps préparés par le formateur (selon de type de cours):
===================================================================
- SOUVENT un point de départ pour les Tps
- QUELQUEFOIS une solution complète (LORSQU'IL S'AGIT d'une appli "DEMO")
- QUELQUEFOIS une série d'étapes de TP (tags "TP1_debut" , "TP1_solution" , ...)

Utilisation des scripts du répertoire "classroom_git_scripts"
=============================================================
1) Lancer une fenetre "CMD" et se placer dans un répertoire de travail (exemple: c:\tp ) 
2) Lancer la commande suivante:
   git clone https://github.com/didier-mycontrib/classroom_git_scripts.git
3) se placer dans le répertoire "classroom_git_scripts" via un "cd" ou via "l'explorateur windows"
4) modifier (selon le type de formation) la seconde ligne 
   du sous-script set-env.bat (set GIT_PROJECT=design-patterns_ou_autre_projet)
   sachant que la valeur de GIT_PROJECT doit correspondre à un des projets existants
   de https://github.com/didier-mycontrib?tab=repositories.
5) lancer le script 0_git_clone_remote_repository.bat
   pour récupérer le code du projet sur le disque local (dans un nouveau 
   sous répertoire au nom du projet de la formation) 

6) lancer le script 0bis1_lister_tag_tp.bat pour savoir si des tags existent
   pour les différentes phases des TPs
   6.1) mettre à jour la ligne 
set GIT_TAG_TP=TP1_debut dans le script 0bis2_get_debut_ou_solution_tpN.bat
   6.2) lancer le script 0bis2_get_debut_ou_solution_tpN.bat pour récupérer l'état du code en début de Tp
   6.3) mettre à jour la ligne 
set MY_TP_N=myTP1 dans le script 1a_new_branch_for_myTp_N.bat
   6.4) lancer le script 1a_new_branch_for_myTp_N.bat pour préparer une future sauvegarde du Tp
   6.5) EFFECTUER le TP (modifications , ...)
   6.6) Lancer les scripts "1b_git_status.bat" puis "2b_git_commit_all_with_new_and_deleted.bat"
        ou bien "2c_git_reset_undo_commit.bat" pour sauvegarder (ou pas) vos modifications
        au sein de la branche temporaire myTPn
   6.7) lancer le script "3a_return_to_masterBranch_checkout-master.bat" pour revenir sur la branche
        principale des Tps
   6.8) mettre à jour la ligne 
set GIT_TAG_TP=TPn_solution dans le script 0bis2_get_debut_ou_solution_tpN.bat
   6.9) lancer le script 0bis2_get_debut_ou_solution_tpN.bat pour récupérer l'état du code en fin de Tp
   6.10)visualiser la SOLUTION du TP n
   6.11)relancer si besoin le script 0bis1_lister_tag_tp.bat pour savoir s'il existe un TP N+1
   6.12)ré-itérer les étapes 6.1 à 6.10 sur le TP N+1 (s'il existe)

   