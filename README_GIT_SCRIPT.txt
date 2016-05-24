Cette collection de script GIT est prevue pour accompagner
les TPs au sein d'une formation informatique

Elements suppos�s install�s dans la salle de cours:
===================================================
* GIT en ligne de commande sous windows (ou sous linux)
* Un editeur de fichier annexe (ex: Notepad++ ou ....)
* D'autres �l�ments selon le contexte (navigateur web , IDE "eclipse ou autre" , maven ou npm ou ...)

Liste des GIT_PROJECT associ�s � des cours/formations : 
=====================================================
https://github.com/didier-mycontrib?tab=repositories

Elements de Tps pr�par�s par le formateur (selon de type de cours):
===================================================================
- SOUVENT un point de d�part pour les Tps
- QUELQUEFOIS une solution compl�te (LORSQU'IL S'AGIT d'une appli "DEMO")
- QUELQUEFOIS une s�rie d'�tapes de TP (tags "TP1_debut" , "TP1_solution" , ...)

Utilisation des scripts du r�pertoire "classroom_git_scripts"
=============================================================
1) Lancer une fenetre "CMD" et se placer dans un r�pertoire de travail (exemple: c:\tp ) 
2) Lancer la commande suivante:
   git clone https://github.com/didier-mycontrib/classroom_git_scripts.git
3) se placer dans le r�pertoire "classroom_git_scripts" via un "cd" ou via "l'explorateur windows"
4) modifier (selon le type de formation) la seconde ligne 
   du sous-script set-env.bat (set GIT_PROJECT=design-patterns_ou_autre_projet)
   sachant que la valeur de GIT_PROJECT doit correspondre � un des projets existants
   de https://github.com/didier-mycontrib?tab=repositories.
5) lancer le script 0_git_clone_remote_repository.bat
   pour r�cup�rer le code du projet sur le disque local (dans un nouveau 
   sous r�pertoire au nom du projet de la formation) 

6) lancer le script 0bis1_lister_tag_tp.bat pour savoir si des tags existent
   pour les diff�rentes phases des TPs
   6.1) mettre � jour la ligne 
set GIT_TAG_TP=TP1_debut dans le script 0bis2_get_debut_ou_solution_tpN.bat
   6.2) lancer le script 0bis2_get_debut_ou_solution_tpN.bat pour r�cup�rer l'�tat du code en d�but de Tp
   6.3) mettre � jour la ligne 
set MY_TP_N=myTP1 dans le script 1a_new_branch_for_myTp_N.bat
   6.4) lancer le script 1a_new_branch_for_myTp_N.bat pour pr�parer une future sauvegarde du Tp
   6.5) EFFECTUER le TP (modifications , ...)
   6.6) Lancer les scripts "1b_git_status.bat" puis "2b_git_commit_all_with_new_and_deleted.bat"
        ou bien "2c_git_reset_undo_commit.bat" pour sauvegarder (ou pas) vos modifications
        au sein de la branche temporaire myTPn
   6.7) lancer le script "3a_return_to_masterBranch_checkout-master.bat" pour revenir sur la branche
        principale des Tps
   6.8) mettre � jour la ligne 
set GIT_TAG_TP=TPn_solution dans le script 0bis2_get_debut_ou_solution_tpN.bat
   6.9) lancer le script 0bis2_get_debut_ou_solution_tpN.bat pour r�cup�rer l'�tat du code en fin de Tp
   6.10)visualiser la SOLUTION du TP n
   6.11)relancer si besoin le script 0bis1_lister_tag_tp.bat pour savoir s'il existe un TP N+1
   6.12)r�-it�rer les �tapes 6.1 � 6.10 sur le TP N+1 (s'il existe)

   