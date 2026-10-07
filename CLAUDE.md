# Consignes pour Claude

## Publication sur GitHub
- Ne jamais demander s'il faut pousser le code ou ouvrir une pull request.
- Après chaque modification : commit, push sur la branche de travail, puis ouvrir directement la pull request vers `main`.
- La seule étape laissée à l'utilisateur est la validation (fusion) de la pull request : lui donner le lien.

## Site
- `index.html` : page d'entrée. Elle affiche le BAC Terminale au démarrage et contient le bouton en bas à gauche (menu déroulant BAC Terminale / BAC Français / BAC Maths). Chaque site est chargé dans son propre cadre, sans conflit de styles ni de scripts.
- `terminale.html` : site du BAC Terminale (ancien dépôt BAC-2027) ; ses consignes restent valables (fiches dans `matieres`, flashcards dans `flashcardsData`, origine des fiches, intitulés officiels, flashcards autonomes).
- `francais.html` : site du bac de français (ancien dépôt BAC-FR) ; ses consignes restent valables (`TEXTES`, `texteLines`/`analysesData` alignés ligne par ligne, `NOTIONS`, fiches HTML, `FLASHCARDS_MAIN`, citations exactes).
- `maths.html` : épreuve anticipée de mathématiques de première, deux parcours (`parcours:["spe"]` ou `["nonspe"]`, choix enregistré sur l'appareil). Même esthétique que `francais.html`, navigation par adresse `#…`, formules en KaTeX (chargé depuis jsDelivr ; écrire les formules entre `\(…\)` ou `\[…\]` dans des gabarits `` R`…` `` = `String.raw`).
  - `CHAPITRES` : cours (`essentiel`, `html` en blocs `.section` / `.def` / `.prop` / `.exemple` / `.methode` / `.piege` / `.aretenir` / `.astuce`, `fc` = flashcards du chapitre). Programmes en vigueur pour la session 2027 (BO du 2 avril 2026).
  - `AUTO_THEMES` : générateurs de QCM d'automatismes (`gen()` renvoie `mkQ(question, bonne, [distracteurs], explication)`) ; chaque distracteur doit correspondre à une erreur typique et être différent de la bonne réponse.
  - `EXERCICES` (`EX_SPE`, `EX_NS`) et `SUJETS` : exercices type bac et sujets blancs (12 QCM + exercices totalisant 14 points). Indiquer honnêtement la source (« D'après le sujet zéro… », « Sur le modèle de… », « Exercice original »). Les sujets officiels ne sont pas recopiés : la rubrique `ANNALES` renvoie vers Eduscol et l'APMEP.
  - Outils de figures : `graph()`, `tree()`, `cercleTrigo()`, `tv()` (tableaux de signes et de variations).
  - Sans calculatrice : choisir des valeurs calculables à la main, ou donner les valeurs approchées utiles dans l'énoncé. Vérifier chaque calcul.
- Pas de commentaires ni de lignes vides dans le code.
