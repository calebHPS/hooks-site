# Hooks Property Services – static site

Static rebuild of hookspropertyservices.com for GitHub Pages. No build step.

## Finish setup (one time)
1. **Get the images** – run `./download-images.sh` (Mac/Linux/Git Bash) or `download-images.ps1` (Windows) on your own computer *before* cancelling Squarespace. It saves them into `assets/`.
2. Push this folder to a GitHub repo → Settings → Pages → Deploy from branch `main` / root.
3. Domain: transfer it out of Squarespace to a registrar (Cloudflare, Namecheap…). Point DNS at GitHub Pages (A records 185.199.108.153 / .109.153 / .110.153 / .111.153, and `www` CNAME to `<username>.github.io`). `CNAME` file is already set to `www.hookspropertyservices.com`. Tick "Enforce HTTPS".
4. Forms (Flyra) and Google reviews (Elfsight) are third-party embeds and keep working unchanged.
5. Check the site, then cancel Squarespace.

URLs match the old site (`/about-us`, `/our-services`, `/maintenance-plan`, `/christmas-lights`, `/permanent-lighting`, `/contact-us`).
