## Deployment (builder docs)

Quartz builds a static site into `public/`. You can host this on Netlify or Vercel.

### Production build

From the repo root:

```bash
npx quartz build
```

Output: `public/`

### Netlify (recommended for static sites)

1. Create a new Netlify site from this repository.
2. Set:
   - **Build command**: `npx quartz build`
   - **Publish directory**: `public`
3. Deploy.
4. Update `quartz.config.ts` `configuration.baseUrl` to your Netlify domain (or custom domain) once you have it.

### Vercel

Vercel can host static outputs as well.

1. Create a new Vercel project from this repository.
2. Set:
   - **Build command**: `npx quartz build`
   - **Output directory**: `public`
3. Deploy.
4. Update `quartz.config.ts` `configuration.baseUrl` to your Vercel domain (or custom domain).

### Notes

- `public/` is a build artifact and should not be committed (it is ignored in `.gitignore`).
- Local preview is via `npx quartz build --serve` (and ngrok if you want external access).

