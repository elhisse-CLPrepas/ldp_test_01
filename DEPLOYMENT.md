# Déploiement Git, GitHub Et Site

## 1. Initialiser le dépôt local

```powershell
git init
git add .
git commit -m "feat: add ldp easy landing pack"
```

## 2. Créer le dépôt GitHub

Sur GitHub :

1. Créer un nouveau repository, par exemple `ldp-easy`.
2. Ne pas ajouter de README depuis GitHub si le fichier existe déjà localement.
3. Copier l'URL du repository.

Puis connecter le dépôt local :

```powershell
git branch -M main
git remote add origin https://github.com/VOTRE-COMPTE/ldp-easy.git
git push -u origin main
```

## 3. Activer GitHub Pages

Dans GitHub :

1. Aller dans `Settings`.
2. Aller dans `Pages`.
3. Dans `Build and deployment`, choisir `GitHub Actions`.
4. Sauvegarder.

Le workflow `.github/workflows/deploy-pages.yml` publiera le site à chaque push sur `main`.

## 4. Déployer dans `public_html/ldp_FORMATION_ia`

Pour un hébergement classique type cPanel/FTP, placer ces fichiers dans :

```text
public_html/ldp_FORMATION_ia/
```

Fichiers et dossiers à envoyer :

```text
index.html
styles.css
assets/
.nojekyll
```

URL publique attendue :

```text
https://www.clprepas.com/ldp_FORMATION_ia/
```

Important : les chemins sont relatifs. Il ne faut pas ajouter de `/` devant `styles.css` ou `assets/...`, sinon le site cherchera les fichiers à la racine du domaine au lieu du dossier `ldp_FORMATION_ia`.

## 5. Mettre à jour le site

```powershell
git status
git add .
git commit -m "content: update landing page"
git push
```

## 6. Revenir a une version stable

Lister les versions :

```powershell
git tag
```

Voir une version :

```powershell
git show v1.0.0
```

Créer une branche depuis une version :

```powershell
git checkout -b restore-v1 v1.0.0
```
