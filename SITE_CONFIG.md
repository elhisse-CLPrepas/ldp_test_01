# Configuration Du Site

## Dossier Public

```text
public_html/ldp_FORMATION_ia
```

## URL Publique

```text
https://www.clprepas.com/ldp_FORMATION_ia/
```

## Règle De Chemins

Le site utilise uniquement des chemins relatifs :

- `styles.css`
- `assets/logo-clprepas.webp`
- `assets/hero-ia-strategie.png`

Cela permet au site de fonctionner depuis un sous-dossier sans configuration supplémentaire.

## Déploiement Local

```powershell
powershell -ExecutionPolicy Bypass -File .\deploy-local.ps1
```

Le script synchronise les fichiers publics dans :

```text
public_html/ldp_FORMATION_ia
```
