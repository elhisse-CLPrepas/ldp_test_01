# LDP Easy

Landing page statique pour présenter l'offre de formation en compétences IA de CLPrepas.

## Contenu du pack

- `index.html` : page principale du site.
- `styles.css` : design responsive bleu, gold et nuances professionnelles.
- `assets/logo-clprepas.webp` : logo utilisé dans l'en-tête et comme icône.
- `assets/hero-ia-strategie.png` : affiche intégrée dans le hero et la section expertise.
- `.github/workflows/deploy-pages.yml` : déploiement automatique vers GitHub Pages.
- `.nojekyll` : publication GitHub Pages sans transformation Jekyll.
- `.gitattributes` : règles simples pour stabiliser les fins de ligne.
- `VERSIONING.md` : système de versionnage et convention de commits.
- `DEPLOYMENT.md` : procédure Git, GitHub et publication du site.
- `CHECKLIST.md` : contrôles avant mise en ligne.

## Déployer en local

Depuis le dossier du projet :

```powershell
py -m http.server 8080
```

URL locale :

```text
http://localhost:8080
```

## URL de production

Le site est prévu pour être publié dans le dossier :

```text
public_html/ldp_FORMATION_ia
```

URL publique attendue :

```text
https://www.clprepas.com/ldp_FORMATION_ia/
```

Les chemins du site sont relatifs pour fonctionner correctement dans ce sous-dossier :

- `styles.css`
- `assets/logo-clprepas.webp`
- `assets/hero-ia-strategie.png`
- ancres internes `#offre`, `#expertise`, `#programme`, `#contact`

## Contact

- Email : info@clprepas.com
- Site : https://www.clprepas.com
- Téléphone : 0662605998
