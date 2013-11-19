Remarque pre-presentation
=========================

1ère phrase
Qu'est-ce que c'est, à quoi ça sert: Connaître par cœur
Puis expliquer les détails


Ce qui manque

Partie 1
--------

expliquer 'tests unitaires', et 'tests fonctionnels' à explication 'build'
Concept de Mock, specification exécutable
Pour une entrée donnée => la sortie est celle attendue (image, matrice énorme, 2 paramètres)
* dev à 2: s'accorder sur une interface et faire des mocks d'implementation
'Mocker'

Génération de documentation
    * -> ajouter 'couverture de code'

Build -> Dire que c'est un exemple de ce qui pourrait être fait

séparer en 3 Qu'est-ce qu'on veut vérifier sur des commits

Correction du code source: compilation, détection code mort
Correction niveau exécution: tests u + f/intégration, performance
Qualité du code source
        'Style'
        lisibilité
        maintenabilité
        respect standard de codage
        documentation !
   Recopier 'Qualité de code'

Principes:
---------


TODO Remplacer 'validation' par 'analyse' ?
TODO Remplacer 'produit' par logiciel et client par utilisateur'


'Pourquoi'

Pourquoi faire ces tests
Pourquoi faire autre part que sa machine
        * dépendances logicielles/matérielles
        * partagée par toute l'équipe
        * performance
        *

L'intégration continue à Inria
------------------------------

Message à passer: Qu'est-ce que l'intégration continue, outils, à quoi ça sert

Pour inciter les gens à faire de l'intégration continue, Inria a mis en place une plateforme d'intégration continue qui est constituée de
Jenkins et de serveurs de machines virtuelles appelé cloudstack.

URL ci.inria.fr

Expliquer comment techniquement Jenkins fonctionne

Ordonnanceur de tests, qui prend en entrée

'I/O'
=> Gestionnaire de lancement de 'build'
=> en entree, du code et un script de build
=> check le repository des sources (polling où
=> où le code, où est le test
=> comment récupérer les résultats
=> le reste du monde

=> Quand sont lancés les tests ?

=> où est le fichier à lancer ?
Build et tests et jeux de données, dans le même repository
=> recevoir des mails,
=> allumer un nabastag, désactiver la machine à café, fermer la porte du bureau à clé

Résultats gérés par des plugins Web

Expliquer les box "bash execute"

où c'est exécuté

tests sont lancés quand je commit
Les tests sont gérés par mon script de build, les outils sont choisis par moi



Pourquoi IC inria
-----------------

Expliquer contraintes techniques =>
Communauté de gens qui utilisent =>


Partie 3
========

'Depuis son bureau'

Contexte de dev
=> interfaces: Fred et code contrôle node / open node
=> tailles de lignes
=> préservation de l'API à tout moment

Ajouter des Schémas

Création d'un middleware logiciel

Contraintes

Déterminisme de mon code: multithreadé, non determinisme, syncro, timing, communication avec du matériel
Seul de mon côté, mais interfacé avec 2 autres développement.
Plateforme va durer 10 ans, je serai plus là, maintenable par qqn d'autre

ENlever lien au matériel


Mise en place
-------------

Tableau outils mis en place
=> pas les dire, mais les mettre dans un tableau
=> dire ce qu'ils font niveau fonctionnalités

Mettre un exemple en Python et en C

