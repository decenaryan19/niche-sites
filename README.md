# Niche portfolio sites

Three one-page portfolio sites for Ryan Decena, one per skill. Plain HTML/CSS/JS, hosted on Vercel.

| Folder | Live site | Vercel project |
|---|---|---|
| `video-editor/` | https://video.decenaryan.site | ryan-video-editor |
| `ai-automation/` | https://ai.decenaryan.site | ryan-ai-automation |
| `smm/` | https://smm.decenaryan.site | ryan-smm |

Main site (separate repo `decenaryan19/myWebsite`): https://decenaryan.site

## Structure

- `_shared/` holds `site.css` and `site.js`. Each site keeps its own copy, so copy them in again after editing.
- `video-editor/media/` holds the compressed videos (`.mp4`) and thumbnails (`.jpg`). The videos are listed in the `WORKS` array in `video-editor/index.html`.
- Each site has its own `vercel.json` (clean URLs, long cache for `/media`).

## Deploy

On Windows, from this folder:

- `deploy.cmd` deploys all three sites to production on Vercel.
- `domains.cmd` attaches the subdomains (already done).
- `deploy-main.cmd` deploys the main site from `Documents\GitHub\myWebsite`.

These need a logged-in Vercel CLI (`npx vercel login`).
