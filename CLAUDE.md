# Consignes pour Claude

## Publication sur GitHub
- Ne jamais demander s'il faut pousser le code ou ouvrir une pull request.
- Après chaque modification : commit, push sur la branche de travail, puis ouvrir directement la pull request vers `main`.
- La seule étape laissée à l'utilisateur est la validation (fusion) de la pull request : lui donner le lien.

## Site
- `index.html` : page d'entrée. Elle affiche le BAC Terminale au démarrage et contient le bouton en bas à gauche (menu déroulant BAC Terminale / BAC Français / BAC Maths). Chaque site est chargé dans son propre cadre, sans conflit de styles ni de scripts.
- `terminale.html` : site du BAC Terminale (ancien dépôt BAC-2027) ; ses consignes restent valables (fiches dans `matieres`, flashcards dans `flashcardsData`, origine des fiches, intitulés officiels, flashcards autonomes).
- `francais.html` : site du bac de français (ancien dépôt BAC-FR) ; ses consignes restent valables (`TEXTES`, `texteLines`/`analysesData` alignés ligne par ligne, `NOTIONS`, fiches HTML, `FLASHCARDS_MAIN`, citations exactes).
- BAC Maths : « Aucun contenu pour le moment » (dans `index.html`).
- Pas de commentaires ni de lignes vides dans le code.
