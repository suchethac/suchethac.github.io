# Docker Setup Guide - Step by Step

## Step 1: Install Docker Desktop for Mac

1. **Download Docker Desktop:**
   - Go to: https://docs.docker.com/get-docker/
   - Or directly: https://www.docker.com/products/docker-desktop/
   - Download Docker Desktop for Mac (Apple Silicon or Intel, depending on your Mac)

2. **Install:**
   - Open the downloaded `.dmg` file
   - Drag Docker to Applications folder
   - Open Docker from Applications
   - Follow the setup wizard
   - **Important:** Docker Desktop must be running (you'll see the Docker whale icon in your menu bar)

3. **Verify Installation:**
   - Open Terminal
   - Run: `docker --version`
   - Run: `docker compose version`
   - Both should show version numbers if successful

## Step 2: Start Your Site

Once Docker is installed and running, come back to your project directory and run:

```bash
# Pull the pre-built image
docker compose pull

# Start the development server
docker compose up
```

## Step 3: View Your Site

- Open your browser and go to: **http://localhost:8080**
- You should see your website!

## Step 4: Make Changes

- Edit any files in your project
- Changes will automatically reload (may take a few seconds)
- Just refresh your browser to see updates

## Step 5: Stop the Server

- Press `Ctrl+C` in the terminal where Docker is running

---

## Troubleshooting

- **"Docker daemon not running"**: Make sure Docker Desktop is open and running
- **Port 8080 in use**: Check if something else is using port 8080
- **Permission errors**: On first run, Docker may ask for permissions - grant them

## Alternative: Slim Version (Smaller Download)

If you want to save bandwidth, use the slim Docker image:

```bash
docker compose -f docker-compose-slim.yml up
```




