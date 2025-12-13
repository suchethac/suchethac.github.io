# Install Docker with Homebrew

## Run this command in your terminal:

```bash
brew install --cask docker
```

**Note:** This will ask for your password (for sudo access). Just type it in when prompted.

## After installation:

1. **Open Docker Desktop:**

   - Press `Cmd + Space` to open Spotlight
   - Type "Docker" and press Enter
   - OR go to Applications and open Docker

2. **Wait for Docker to start:**

   - You'll see a whale icon in your menu bar
   - Wait until it says "Docker Desktop is running"

3. **Then you can start your site:**
   ```bash
   docker compose pull
   docker compose up
   ```

## Verify Docker is working:

After Docker Desktop is running, test it:

```bash
docker --version
docker compose version
```

If both commands show version numbers, you're all set!
