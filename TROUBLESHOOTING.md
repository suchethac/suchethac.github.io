# Troubleshooting: Not Seeing Changes in Browser

If you make changes to your site but don't see them in the browser, try these solutions:

## Solution 1: Hard Refresh (Most Common Fix)

**Mac:** `Cmd + Shift + R`  
**Windows/Linux:** `Ctrl + Shift + R`

This clears the browser cache and forces a fresh reload.

## Solution 2: Watch the Logs

Open a terminal and run:

```bash
docker compose logs -f
```

When you save a file, you should see:

```
Regenerating: 1 file(s) changed at [timestamp]
```

Once you see that, refresh your browser manually.

## Solution 3: Check if Site is Regenerating

Make a small test change to any file, then wait 5-10 seconds and check:

```bash
docker compose logs --tail 20 | grep -i regenerat
```

If you see "Regenerating", Jekyll is working - just refresh your browser.

## Solution 4: Restart the Container

If changes aren't being detected at all:

```bash
docker compose restart
```

## Solution 5: Verify LiveReload Port

Make sure port 35729 isn't blocked. You can check if LiveReload is trying to connect:

- Open browser developer tools (F12)
- Check the Console tab for LiveReload connection messages
- Check if there are any errors blocking the connection

## Why Auto-Reload Might Not Work

1. **Browser extensions** (ad blockers, privacy tools) can block LiveReload
2. **Network/firewall** issues with the LiveReload connection
3. **Browser cache** needs a hard refresh
4. **Docker volume mounting** delays in detecting file changes

## Recommended Workflow

1. Make your changes
2. Save the file
3. Wait 5-10 seconds
4. Hard refresh the browser (`Cmd + Shift + R` on Mac)

This is the most reliable way to see your changes immediately!

