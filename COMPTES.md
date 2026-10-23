# Activer les comptes du bac de français

Sans configuration, le site fonctionne en mode local : les textes, auteurs et œuvres saisis restent dans le navigateur de l'appareil (export/import possible dans « Mon compte »). Pour que chaque élève retrouve ses données sur tous ses appareils, il faut un projet Supabase (offre gratuite suffisante).

1. Créer un compte sur https://supabase.com, puis un nouveau projet (région Europe conseillée).
2. Dans **SQL Editor**, coller le contenu de `supabase.sql` et cliquer sur **Run** : la table `bacfr_donnees` est créée avec la sécurité au niveau des lignes (chaque utilisateur ne peut lire et modifier que ses propres données).
3. Dans **Authentication → Sign In / Providers → Email** : laisser « Confirm email » activé ; fixer la longueur minimale du mot de passe à 8 caractères (option « Password requirements » : lettres et chiffres).
4. Dans **Authentication → URL Configuration** : mettre l'adresse publique du site dans **Site URL** et ajouter l'adresse de `francais.html` (par exemple `https://<pseudo>.github.io/BAC/francais.html`) dans **Redirect URLs** (liens de confirmation et de réinitialisation du mot de passe).
5. Dans **Project Settings → API** : copier **Project URL** et la clé publique **anon** (jamais la clé `service_role`), puis les écrire dans `francais.html` :

```js
const SUPABASE_URL = "https://xxxx.supabase.co";
const SUPABASE_CLE = "eyJ…";
```

La clé `anon` est publique par conception : la protection repose sur l'authentification et sur les règles de `supabase.sql`.
