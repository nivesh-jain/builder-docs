## Sharing your builder docs via ngrok

This project includes a helper script to start the Quartz dev server and expose it over the internet using ngrok.

### Prerequisites

- Node.js (v22+ recommended; you currently have a newer compatible version).
- `ngrok` installed (`ngrok --version` should work in your terminal).
- An ngrok account with an auth token configured:

```bash
ngrok config add-authtoken YOUR_TOKEN
```

You only need to run the auth token command once per machine.

### Start local dev server + tunnel

From the `builder-quartz` project root:

```bash
./start-dev-and-ngrok.sh
```

This will:

1. Verify `node`, `npm`, and `ngrok` are available.
2. Start the Quartz dev server on `http://localhost:8080` if it is not already running.
3. Start an `ngrok http 8080` tunnel and print a public URL in the terminal.

Leave this script running while you share the link; press `Ctrl+C` to stop the ngrok tunnel (the dev server may continue running in the background).

### Quick-share cheat sheet

- Configure ngrok (one time):

```bash
ngrok config add-authtoken YOUR_TOKEN
```

- Start docs server + tunnel:

```bash
cd /Users/niveshjain/projects/docs/builder-quartz
./start-dev-and-ngrok.sh
```

- Visit locally:

```bash
open http://localhost:8080
```

Share the `https://...ngrok.io` URL printed by the script with collaborators to give them temporary access to your in-progress builder documentation.

