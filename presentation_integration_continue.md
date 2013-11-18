L'intégration continue
======================

Auteur: Gaëtan Harter


Manque
------


* Un objectif final pour ma présentation à suivre pour toute la durée de la présa (pour moi, et pour les gens)
* --
* Un exemple de projet que je pourrais utiliser pour tout mes exemples



<html><div style="page-break-before:always">&nbsp;</div></html>

Plan
====


1. Quid de l'intégration continue
  * Qu'est-ce que c'est
  * Pourquoi l'intégration continue
  * (?) Les freins à la mise en place
2. L'intégration continue à Inria
  * Le service proposé
  * Pourquoi utiliser le service d'inria
  * (?) 3ème slide
3. Mon expérience de l'intégration continue
  * Contexte de développement
  * Ce que j'ai mis en place
  * Bilan




À ajouter ?
===========

* les différents types de Test (unitaires / fonctionnels|intégration) ?
* Dessin de ce qui est fourni par Inria
* Dessin de ce qui est fourni de mon côté


<html><div style="page-break-before:always">&nbsp;</div></html>


Quid de l'intégration continue
==============================

  * Contexte
  * Qu'est-ce que c'est
  * Pourquoi l'intégration continue
  * (?) Les freins à la mise en place

Contexte
--------

Une *équipe* de développement logiciel qui travaille sur un
*produit* pour des *clients*.


Qu'est-ce que c'est
-------------------

L'integration continue est une __pratique de développement__ où les équipiers
intègrent leur code fréquemment, en général chaque personne intègre au moins
quotidiennement.
(Martin Fowler)

*Pratique de développement logiciel au cœur des pratiques agiles.*


<html><div style="page-break-before:always">&nbsp;</div></html>


### Intégrer ###

* Publier son code source dans un gestionnaire de sources partagé
* Lancer un `build` sur le code présent dans le repository


#### Le `build` ####

__Script automatisé__ et __autotesté__ qui va réaliser la validation du produit.


<html><div style="page-break-before:always">&nbsp;</div></html>

#### Le `build` ####

* Compilation
* Exécution des tests (__unitaires__ et __fonctionnels__)
* Inspection automatique de code
    * évaluation de la qualité de code par analyse statique
* Génération de documentation
    * Rapports de tests
    * Documentation technique

### Intégration continue ###

(rappel 'Intégration' par l'équipe)

L'intégration continue va consister à réaliser cette étape de validation complète de
manière automatique dès qu'un nouveau changement est publié sur
le gestionnaire de source.

Ce `build` sera réalisé sur un serveur commun à toute l'équipe qui doit être
un clone de l'environnement de production.

<html><div style="page-break-before:always">&nbsp;</div></html>


Pourquoi l'intégration continue
-------------------------------


__Refactorer cette partie là en mettant bien en avant le but réel__

But: améliorer la qualité du code (produi final) et détecter les problèmes au plus tôt.

* Pas une validation formelle à 100%, Pas trouver TOUS les problèmes, mais en trouver les plus possible dès que possible (=> environnement == production)
* Lancement répété des tests => probabilité plus grande de trouver des problèmes rares
* Régression du code! (éviter)
* visibilité sur le niveau de test du projet, couverture de code,
    * testabilité
    * maintenabilité
    * sources des erreurs habituelles => trouver une solution en amont
* 'commun' => si un des équipiers part, l'infra reste, marche pour TOUT le monde et pas que pour moi


Problèmes classiques:

* Ça marchait sur ma machine => testé sur un environnement ≃ production
* Coût de la réparation tardive d'un bug => détecter et corriger les problèmes dès qu'ils arrivent
    * ex: compilation qui échoue
        * sur son PC: pas grave
        * sur le PC du co-équipier: ça fait amateur
        * chez l'utilisateur au moment où il voudra l'installer: c'est la merde
             * -> ha oui, il fallait que tu installes ces 25 dépendances…


<html><div style="page-break-before:always">&nbsp;</div></html>

-----

> ??? Contraintes à respecter
> -----------------------
>
> * Un `build` doit être rapide (max 10min)
> * Tester sur un clone de l'env de production

-----


Freins à la mise en place
-------------------------

=> amener au fait que le service d'inria va pouvoir aider ?


-----

> Copie des slides de la formation
> --------------------------------
>
> ### Les barrières à l'intégration continue ###
>
> * Augmentation des coûts du maintien
>     * perception erronée, le besoin d'intégrer, tester, inspecter et déployer existe aussi avec un processus manuel.
> * Besoin de matériels supplémentaires et beaucoup de changement à effectuer
>     * Mise en place au fûr et à mesure
>     * Moins coûteux que le problème tardif
> * Trop de build en échec
>     * faire des builds privés avant de pusher du code
>
>
> ### Cohésion d'équipe ###
>
> * Qui a touché à MON code ?
>     * pas de "common code ownership"
> * TES changements sont incompatibles avec les MIENS. Comment on fait maintenant ?
>     * Frustration dans les étapes de "merge"
> * Je pensais qu'on avait corrigé ce bug il y a 2 mois ?
>     * suivi des anomalies, risque de pertes de changement lors des merges tardifs
>     * perte de confiance dans l'équipe
>
> ### Qualité du code ###
>
> * On a trois classes qui font la même chose
>     * Duplication de code
> * C'est que ce nom de variable ?
>     * standard de codage
> * C'est quoi cet appel en BD dans la couche présentation
>     * adhérence à des règles de design
>
> ### Bonnes pratiques ###
>
> * Mise en place au plus tôt dans le cycle de vie du projet.
> * "Commit" fréquents et fonctionnels
> * Toujours effectuer un build privé
> * Corriger les builds en échec le plus rapidement
> * Tout les tests et l'inspection de code doivent passer


> Plus plus
> ---------
>
> * Déploiement automatisé
> * Intégration des migrations de base de données
> * Publier les binaires vers les repositories de paquets

-----


<html><div style="page-break-before:always">&nbsp;</div></html>

L'intégration continue à Inria
==============================

  * Le service proposé
  * Screenshots
  * Pourquoi utiliser le service d'inria

<html><div style="page-break-before:always">&nbsp;</div></html>


Le service proposé par Inria
----------------------------

![platform_ic_inria.png](platform_ic_inria_50_p.png)

IMAGE: les composants de l'intégration continue

Une instance de `Jenkins` par équipe et des machines virtuelles personnalisables pour exécuter ses builds.

### Jenkins ###

`Jenkins`: An extendable open source continuous integration server.
Fork de `Hudson` (oracle)


Serveur web qui va gérer l'exécutions des builds, et présenter les résultats.
L'exécution est réalisé sur d'autres machines en s'y connectant via ssh (ou autre).

"Choose from over 600 plugins to customize Jenkins exactly to your needs."

### Machines virtuelles ###

* Certaines configurations préconfigurées: Debian, Windows
    * Mais possibilité de la créer de 0
* performances configurables: processeurs, ram, disque dur

Screenshots
-----------

* Interface simple
* Résultats:
    * Chuck Norris
    * Coverage report
    * Tests report

<html><div style="page-break-before:always">&nbsp;</div></html>

Pourquoi utiliser le service d'Inria
------------------------------------

* Gratuit !
* Administré par d'autres gens
* pas de coût de matériel
* ça reste même quand l'IJD part
* (?) Infrastructure Best Effort => mais les problèmes sont corrigés au plus vite dès qu'ils arrivent

<html><div style="page-break-before:always">&nbsp;</div></html>

Mon expérience de l'intégration continue
========================================

  * Contexte de développement
  * Ce que j'ai mis en place
  * Bilan

<html><div style="page-break-before:always">&nbsp;</div></html>


Contexte de développement
-------------------------

### SensLAB - Fit Equipex IOT-LAB ###

Plateforme de réseau de capteurs, utilisée par des chercheurs qui réservent des matériels réseaux sans fil par centaines.

Infrastructure de réservation et pilotage du matériel.

Application: Python + C déployé sur des cartes Linux embarquées qui intéragissent avec un microcontrolleur connecté par port série.


#### Contraintes ####

* Code en production
* fonctionne H24
* Large échelle: Fiabilité (0.01% d'erreur => 1 fois sur 10 avec 1000 équipements)
* Le matériel n'est pas encore disponible (seulement qqs cartes)
* Développement seul de cette partie
* J'aurais pû partir de l'équipe fin août (avant même que ce soit utilisé)
* Ce code est utilisé pour valider les cartes qui arriveront

<html><div style="page-break-before:always">&nbsp;</div></html>

Intégration mise en place
-------------------------

* Test unitaires sur le code Python et le code C (unittest, setuptools, nosetests, google testing framework)
* Tests fonctionnels exécutés sur cible embarquée == les cartes réelles
* Un seul point d'entrée: fichier `setuptools`: 'tests' 'integration' 'install'
* Installation automatique des dépendances Python
* Possibilité de générer un fichiers .tar.gz pour installer le code: 'python setup.py install'

<html><div style="page-break-before:always">&nbsp;</div></html>

Bilan
-----

### Produit ###

* On pourra déployer le code en production dès que le matériel sera là
* Maîtrise et confiance dans le produit développé (Je sais ce qui marche!)
* Gros problèmes de fond trouvés très tôt
    * problème de performance en python -> migration en C de la partie problématique
    * Lancement en utilisateur non root
    * Détection de bugs matériels
* Utilisations d'outils 'standards' et éprouvés: tests, packaging
* Ajout au fur et à mesure des fonctionnalités, incrémental

### Personnel ###

* Projet trop gros pour y faire face seul, sans tests corrects
* Envie de me confronter à la mise en place de l'intégration continue
* Maîtrise accrue sur mon projet, son déploiement, ses limites

* Investissement à faire, lourd, complexe (beaucoup de nouveaux outils)
    * Le résultat en vaut l'investissement, quand je change un truc, j'ai confiance dans ce que je fais





