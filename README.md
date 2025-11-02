
# spice-network

This is a small static site (single page) that visualizes a "Spice Pairing Network" using RDF data with rdflib and a graph visualization using vis-network. The site is fully client-side and does not require a build step.

What I added
- `package.json` — convenience scripts: `start`, `dev`, and `deploy` (uses `serve`, `live-server`, and `gh-pages` as devDependencies).
- `.gitignore` — ignores `node_modules`, macOS artifacts, and common logs.
- `docs/index.html` — a copy of `index.html` so GitHub Pages can serve the site from the `docs/` folder (optional; you can also serve from the repository root).

-Run locally (macOS / zsh)

1) Quick: open in your browser

```bash
open index.html
```

2) Recommended: serve over HTTP (some browser features require a server)

```bash
# python3 built-in server
python3 -m http.server 8000
# then open http://localhost:8000
```

3) Using the npm scripts added here (no global install required when using `npx`)

```bash
# from repo root
npm install       # install devDependencies listed in package.json (serve, live-server, gh-pages)
npm run dev       # start live-server on port 8000 and open the root index.html
npm start         # serve the directory with 'serve'
```

Deploy to GitHub Pages (deploy root)

This repository is configured to serve the site from the repository root. The GitHub Actions workflow will upload the repository root and deploy it to Pages on push to `main`.

To publish manually via npm (uses `gh-pages` to push the root to `gh-pages` branch):

```bash
npm run deploy
```

Small helper scripts

I added a tiny script in `scripts/` to run common commands easily. From the repo root you can run:

```bash
# install deps, start dev server with live reload
./scripts/dev.sh

# start a production-like static server
./scripts/start.sh
```

Notes and next steps
- `npm run dev` (live-server) provides auto-reload for files in the project root.
- The GitHub Actions workflow deploys the repository root; if you later add large directories (node_modules, build artifacts) you may want to restrict the upload path or add excludes to avoid large uploads.
- If you'd like, I can add a workflow that builds a dist folder and deploys only that folder instead.

