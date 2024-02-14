# Blog : Début du blog

Il est temps de voir en action notre framework en créant un petit blog.

Ce blog sera une version allégée de celui que nous allons réaliser ensuite avec Laravel 😍

Pour aujourd'hui, on se contente de mettre en place le projet et de créer nos différentes actions pour afficher toutes les pages du site.

## Mise en place

On va commencer par créer notre projet à partir du [repo de la correction du framework](https://github.com/DWWM-AL/CCP2-jour20-framework-mvc-correction).

Comme d'habitude, utilisez le bouton "Use this template" pour créér le repo de votre blog !

Clonez-le dans votre dossier `/www` et pensez bien à faire un `composer i` pour installer les dépendances.

Pensez également à créer un fichier `.env` à partir du `.env.example` pour configurer votre projet.

On va ensuite créer une BDD complète histoire d'être opérationnel rapidement !

Dirigez-vous donc sur phpMyAdmin, connectez-vous et cliquez sur l'onglet "Importer" pour utiliser le fichier `blog.sql` afin de créer la BDD `blog`. *Si une BDD avec ce nom existe déjà, pensez à la supprimer en amont*.

Dernière étape ! Je vous épargne la création des templates Twig histoire d'être focus sur le back. Vous allez donc pouvoir copier le contenu du dossier `views` de cet atelier dans le dossier `resources/views/` de votre projet de blog.

Côté CSS et JS, copiez-coller les dossiers `css` et `js` à la racine du dossier `public` de votre projet.

Si vous êtes du genre curieux (et je vous y encourage), vous pouvez allez regarder les templates pour tenter de bien en comprendre le fonctionnement ! En cas de besoin, la [doc Twig](https://twig.symfony.com/doc/3.x/templates.html) est à votre disposition.

## Une page d'accueil

Pour la partie "Blog" (donc la page d'accueil et la page pour chaque article), on va créer un contrôleur `PostController` !

Vous allez ensuite pouvoir créer la route pour la page d'accueil qui devra avoir comme action une méthode `index()` dans le `PostController`.

Créez naturellement cette méthode `index()` qui doit retourner en réponse la vue générée à partir du template `index.html`.

Si vous regardez un peu le template `index.html`, vous allez voir que celui-ci s'attend à recevoir un "tableau" des posts à afficher.

Vous allez donc devoir créer un modèle `Post` pour pouvoir récupérer les données de votre table `posts`.

Une fois que c'est fait, vous allez devoir l'utiliser pour récupérer l'ensemble de vos posts à l'aide d'Eloquent.

Comment récupérer vos posts avec Eloquent? [La doc est très bien faite](https://laravel.com/docs/10.x/eloquent#retrieving-models) 😁

Passez bien l'ensemble des posts récupérés à votre template via le 2ème argument de la méthode `view()` avec une clé `posts` dans le tableau.

## La page article

Même travail pour la page article !

Vous allez créer une route avec l'URI `/articles/{slug}` dont l'action récupèrera le slug (titre d'un article dans un format url-friendly) depuis ses paramètres.

Grâce à ce slug, vous allez pouvoir récupérer le bon article dans votre table `posts` grâce à votre modèle `Post`.

Encore une fois, vous trouverez facilement comment récupérer une seule entrée dans une table par rapport à la valeur d'un champ avec la [documentation d'Eloquent](https://laravel.com/docs/10.x/eloquent#retrieving-single-models).

Une fois que c'est fait, vérifiez que vous l'avez bien récupéré avec une condition. Dans le cas où ça n'est pas le cas, pensez à lancer une nouvelle `HttpException` pour afficher une page d'erreur 404.

Dans le cas où un article a été récupéré, retournez une vue à partir du template `/post.html` (pensez à bien lui transmettre le post en 2ème argument de la méthode `view()` avec une clé `post`).

Tentez de cliquer sur un article pour voir si tout fonctionne comme prévu !

Il ne nous reste plus qu'à afficher les commentaires juste en dessous de l'article.

Pour se faire, Eloquent dispose d'un système de gestion des relations très sympathique !

Commencez par créer un nouveau modèle pour la table `comments` puisqu'on va venir y récupérer des données.

Ensuite, vous allez devoir rajouter une méthode à votre modèle `Post` qui nous permettra de récupérer facilement tous les commentaires associés à chaque article.

La réponse se trouve [juste ici](https://laravel.com/docs/10.x/eloquent-relationships#one-to-many) (une bonne vieille relation One To Many).

## La page d'inscription

On commence à être dans la répétition mais rien de mieux pour apprendre !

Pour cette page, aucune donnée à transmettre au template ! 🥵

Vous avez simplement à créer une route avec l'URI `/inscription` et une action qui mènera à un contrôleur `RegisterController` et à sa méthode `showRegisterForm()` dont le rôle sera de retourner en réponse la vue obtenue à partir du template `register.html`.

## La page de connexion

Pour cette page, aucune donnée à transmettre au template non plus !

On va simplement créer une route avec l'URI `/connexion` et une action `showLoginForm()` qui sera dans un contrôleur `LoginController`.

Son rôle sera de retourner en réponse la vue obtenue à partir du template `login.html`.

## La page compte

La page compte sera à terme la page accessible seulement pour les utilisateurs connectés !

Comme pour les autres pages, nous gérerons la partie autorisations d'accès plus tard.

Créez donc un contrôleur `HomeController` avec une méthode `index()` et mettez là en action d'une route avec l'URI `/compte`.

Cette action devra simplement retourner une vue générée à partir du template `home.html` (C'est une page vide, elle sera juste là pour symboliser la connexion de notre visiteur).

## La page d'administration du blog

La page d'administration (notre back-office) sera la page accessible seulement pour les administrateurs du site (ceux qui auront un rôle `admin` en BDD) !

Créez donc un contrôleur `AdminController` avec une méthode `index()` et mettez là en action d'une route avec l'URI `/compte/admin`.

Cette action devra simplement retourner une vue générée à partir du template `admin.html` (C'est un page vide, elle sera juste là pour symboliser l'accès réservé aux administrateurs).
