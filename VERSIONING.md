# Systeme De Versionnage

## Branches

- `main` : version stable publiee sur le site.
- `dev` : integration des prochaines modifications.
- `feature/nom-court` : nouvelle section, nouveau contenu ou amelioration.
- `fix/nom-court` : correction rapide.

## Versions

Utiliser le format SemVer :

```text
MAJOR.MINOR.PATCH
```

- `MAJOR` : changement profond de structure ou d'offre.
- `MINOR` : nouvelle section, nouveau formulaire, nouveau parcours.
- `PATCH` : correction de texte, style, lien, bug mineur.

Exemples :

- `v1.0.0` : premiere version publique.
- `v1.1.0` : ajout d'une section temoignages.
- `v1.1.1` : correction d'un lien de contact.

## Commits

Convention recommandee :

```text
type: message court
```

Types utiles :

- `feat` : nouvelle fonctionnalite ou section.
- `fix` : correction.
- `content` : changement de texte.
- `style` : changement visuel CSS.
- `docs` : documentation.
- `deploy` : configuration de deploiement.

Exemples :

```text
feat: add ai training landing page
content: update contact call to action
deploy: add github pages workflow
```

## Cycle Simple

```powershell
git checkout -b dev
git checkout -b feature/hero-message
git add .
git commit -m "content: update hero message"
git checkout dev
git merge feature/hero-message
git checkout main
git merge dev
git tag v1.0.0
git push origin main --tags
```
