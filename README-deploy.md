# GoDaddy Deployment Package

This repo contains the recovered static website for `interlabscing.com`.

## Deploy package

- The deploy-ready site is now available directly at the repo root.
- The packaged archive is `interlabscing-godaddy-deploy.zip`.
- The deployable files are:
  - `index.html`
  - `manifest.webmanifest`
  - `assets/`

## GitHub Pages option

This repository is ready for GitHub Pages. The custom domain is configured via `CNAME`.

1. Create a GitHub repo if you have not already.
2. Add the GitHub remote to this repository:
   ```bash
git remote add origin https://github.com/<username>/<repo>.git
```
3. Push the `gh-pages` branch:
   ```bash
git push -u origin gh-pages
```
4. In the repository settings on GitHub, enable Pages and choose the `gh-pages` branch as the source.

For the custom domain, set GoDaddy DNS:
- A records for `interlabscing.com` to:
  - `185.199.108.153`
  - `185.199.109.153`
  - `185.199.110.153`
  - `185.199.111.153`
- `www` CNAME to `<username>.github.io.`

Then GitHub Pages will serve `https://interlabscing.com/`.

## How to deploy

1. Switch to the `deploy` branch if needed:
   ```bash
git checkout deploy
```

2. Upload the contents of the repository root to your GoDaddy hosting root.
   - Upload only `index.html`, `manifest.webmanifest`, and `assets/`.
   - Do not upload `site/`, `deploy/`, or archive artifacts like `web.archive.org/`.

3. If GoDaddy supports ZIP extraction, you can upload `interlabscing-godaddy-deploy.zip` and extract it directly.

## Local validation

To preview the deploy package locally:

```bash
cd /Users/deployedresources/interlabscing-restore
python3 -m http.server 8001
```

Then open:

```text
http://localhost:8001/
```

## Notes

- `site/` remains the working copy of the recovered project.
- `deploy/` and `interlabscing-godaddy-deploy.zip` are packaging artifacts.
- The repo root is now deployable as a standalone static site.
