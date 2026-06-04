# Interlab Nigeria Website Recovery

This folder contains the recovered static website for `interlabscing.com` built from the 2019 Wayback Machine archive.

## What is recovered

- `index.html` — the rebuilt home page, cleaned of the Wayback wrapper and pointing to local assets
- `manifest.webmanifest` — minimal app manifest for the restored site
- `assets/vendor/` — local vendor assets, including GoDaddy page scripts and downloaded font files
- `assets/2.a0b81bff.chunk.js`, `assets/main.31e47cc9.chunk.js` — local JS chunks from the archive
- `assets/index.html` — original archived page HTML with Wayback wrapper preserved
- `index.raw.html` — backup of the temporary loader index page

## Preview locally

From this folder:

```bash
cd /Users/deployedresources/interlabscing-restore/site
python3 -m http.server 8001
```

Then open:

```text
http://localhost:8001/
```

## Notes

- All font files referenced in `index.html` have been downloaded locally.
- The root page now serves the actual recovered website markup, not the Wayback archive wrapper.
- If you still see a directory listing, make sure the server is started from the `site/` folder and refresh the browser.

## Next steps

- Initialize a Git repository in this folder if you want version control.
- Upload the contents of this folder to your GoDaddy hosting root.
- If you want, I can also help create the final `index.html`/`about.html`/`contact.html` split for easier editing.
