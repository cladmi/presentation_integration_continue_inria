L'intégration continue
======================

Auteur: Gaëtan Harter



<html><div style="page-break-before:always">&nbsp;</div></html>

Plan
====


1. Quid de l'intégration continue
  * Qu'est-ce que c'est
  * Pourquoi l'intégration continue
  * Les freins à la mise en place
2. L'intégration continue à Inria
  * Le service proposé
  * Pourquoi utiliser le service d'inria
  * 3ème slide ?
3. Mon expérience de l'intégration continue
  * Contexte de développement
  * Ce que j'ai mis en place
  * Bilan




À ajouter ?
===========

* les différents types de Test (unitaires / fonctionnels|intégration)
* Dessin de ce qui est fourni par Inria
* Dessin de ce qui est fourni de mon côté




<html><div style="page-break-before:always">&nbsp;</div></html>


Quid de l'intégration continue
==============================

  * Qu'est-ce que c'est
  * Pourquoi l'intégration continue
  * Les freins à la mise en place


Qu'est-ce que c'est
-------------------

L'integration continue est une __pratique de développement__ où les équipiers
intègrent leur code fréquemment, en général chaque personne intègre au moins
quotidiennement.
(Martin Fowler)

Pratique de développement logiciel au cœur des pratiques agiles.


### Intégrer ###

* Publier son code source dans un gestionnaire de sources partagé
* Lancer un `build` sur le code présent dans le repository


#### Le `build` ####

Script __automatisé__ et __autotesté__ qui va réaliser

* Compilation
* Exécution des tests (unitaires et fonctionnels)
* Inspection automatique de code
    * évaluation de la qualité de code par analyse statique
* Génération de documentation
    * Rapports de tests
    * Documentation technique

### Intégration continue ###

L'intégration continue va consister à réaliser cette étape de `build` de
manière automatique dès qu'un nouveau changement est publié sur
le gestionnaire de source.

Ce `build` sera réalisé sur un serveur commun à toute l'équipe qui doit être
un clone de l'environnement de production.

<html><div style="page-break-before:always">&nbsp;</div></html>


Pourquoi l'intégration continue
-------------------------------

But: améliorer la qualité du code et détecter les problèmes au plus tôt.


Problèmes classiques:

* Ça marchait sur ma machine => testé sur un environnement ≃ production
* Coût de la réparation tardive d'un bug => détecter et corriger les problèmes dès qu'ils arrivent
    * ex: compilation qui échoue
        * sur son PC: pas grave
        * sur le PC du co-équipier: ça fait amateur
        * chez l'utilisateur au moment où il voudra l'installer: c'est la merde
             * -> ha oui, il fallait que tu installes ces 25 dépendances…

* Lancement répété des tests => probabilité plus grande de trouver des problèmes rares

* visibilité sur le niveau de test du projet, couverture de code,
    * testabilité
    * maintenabilité
    * sources des erreurs habituelles => trouver une solution en amont



<html><div style="page-break-before:always">&nbsp;</div></html>

Contraintes à respecter
-----------------------

* Un `build` doit être rapide (max 10min)
* Tester sur un clone de l'env de production


Copie des slides de la formation
--------------------------------

### Les barrières à l'intégration continue ###

* Augmentation des coûts du maintien
    * perception erronée, le besoin d'intégrer, tester, inspecter et déployer existe aussi avec un processus manuel.
* Besoin de matériels supplémentaires et beaucoup de changement à effectuer
    * Mise en place au fûr et à mesure
    * Moins coûteux que le problème tardif
* Trop de build en échec
    * faire des builds privés avant de pusher du code


### Cohésion d'équipe ###

* Qui a touché à MON code ?
    * pas de "common code ownership"
* TES changements sont incompatibles avec les MIENS. Comment on fait maintenant ?
    * Frustration dans les étapes de "merge"
* Je pensais qu'on avait corrigé ce bug il y a 2 mois ?
    * suivi des anomalies, risque de pertes de changement lors des merges tardifs
    * perte de confiance dans l'équipe

### Qualité du code ###

* On a trois classes qui font la même chose
    * Duplication de code
* C'est que ce nom de variable ?
    * standard de codage
* C'est quoi cet appel en BD dans la couche présentation
    * adhérence à des règles de design

### Bonnes pratiques ###

* Mise en place au plus tôt dans le cycle de vie du projet.
* "Commit" fréquents et fonctionnels
* Toujours effectuer un build privé
* Corriger les builds en échec le plus rapidement
* Tout les tests et l'inspection de code doivent passer


Plus plus
---------

Déploiement automatisé

Intégration des migrations de base de données

Publier les binaires vers les repositories de paquets


<html><div style="page-break-before:always">&nbsp;</div></html>

L'intégration continue à Inria
==============================

  * Le service proposé
  * Pourquoi utiliser le service d'inria
  * 3ème slide ?

IMAGE: les composants de l'intégration continue

<html><div style="page-break-before:always">&nbsp;</div></html>

Mon expérience de l'intégration continue
========================================

  * Contexte de développement
  * Ce que j'ai mis en place
  * Bilan

<html><div style="page-break-before:always">&nbsp;</div></html>
