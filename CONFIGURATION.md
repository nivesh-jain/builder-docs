## Quartz configuration notes (builder)

This file records intentional Quartz configuration choices so future changes are easier and safer.

### Branding

- **Site title**: Set to `builder` (see `quartz.config.ts` `configuration.pageTitle`).
- **Base URL**: Set to a placeholder `builder-docs.example.com`. Update this to your real domain once you deploy (Netlify/Vercel/custom domain). Local dev and ngrok previews still work with a placeholder.
- **Colors**: Adjusted accent colors (`secondary`/`tertiary`) for both light and dark mode to better match a builder-branded look.

### Plugins

These are enabled in `quartz.config.ts` because they directly support a documentation garden workflow:

- **TableOfContents**: Improves navigation for longer docs.
- **Latex (KaTeX)**: Enabled so math and technical writing work out of the box.
- **SyntaxHighlighting**: Enabled to keep code samples readable.

