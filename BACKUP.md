## Backup strategy (builder docs)

This repo is the source of truth for the builder documentation garden (content + Quartz config).

### Recommended primary backup: remote Git hosting

Use a hosted Git remote (GitHub, GitLab, or your internal Git provider) as the main backup. This gives you:

- Off-machine backups
- Change history
- Easy collaboration + review (PRs)

Suggested steps (choose one provider):

1. Create a new empty repository (e.g. `builder-docs`).
2. Add the remote:

```bash
git remote add origin <YOUR_REMOTE_GIT_URL>
git push -u origin main
```

### Secondary backup (optional): periodic snapshots

If you want a second layer of safety, periodically back up the entire `builder-quartz` folder as a snapshot:

- Zip and store in cloud storage (Google Drive/iCloud/Dropbox) or an encrypted disk.
- Keep at least the last 3 snapshots.

### Restore test (do this once)

To validate backups, try restoring into a separate folder and confirm:

- `npm install` works
- `npx quartz build` succeeds
- `npx quartz build --serve` loads the site

