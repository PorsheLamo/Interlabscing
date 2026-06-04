# GoDaddy Deployment Package

This repo contains the recovered static website for `interlabscing.com`.

## Deploy package

- The deploy-ready site is now available directly at the repo root.
- The packaged archive is `interlabscing-godaddy-deploy.zip`.
- The deployable files are:
  - `index.html`
  - `manifest.webmanifest`
  - `assets/`

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
