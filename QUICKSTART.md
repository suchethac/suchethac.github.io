# Quick Start: Building Your Site Locally

You have two options to build and preview your site locally:

## Option 1: Docker (Easiest - Recommended) ⭐

**Pros:** Handles all dependencies automatically, no setup needed
**Cons:** Requires Docker installation (~400MB download first time)

### Installation Steps:
1. Install Docker Desktop for Mac: https://docs.docker.com/get-docker/
2. Once installed, restart your terminal and run:
   ```bash
   docker compose pull
   docker compose up
   ```
3. Open `http://localhost:8080` in your browser

---

## Option 2: Local Ruby Setup (No Docker)

**Pros:** No Docker needed, runs directly on your machine
**Cons:** Requires manual dependency setup

### Installation Steps:

1. **Install the required Bundler version:**
   ```bash
   gem install bundler:2.5.18
   ```

2. **Install Ruby dependencies:**
   ```bash
   bundle install
   ```

3. **Install Python/Jupyter (optional, for notebook support):**
   ```bash
   pip install jupyter
   ```

4. **Start the development server:**
   ```bash
   bundle exec jekyll serve
   ```

5. **Open `http://localhost:4000` in your browser**

---

## Quick Commands Reference

### Docker Method:
- **Start server:** `docker compose up`
- **Start (slim version):** `docker compose -f docker-compose-slim.yml up`
- **Stop server:** Press `Ctrl+C`

### Local Ruby Method:
- **Start server:** `bundle exec jekyll serve`
- **Stop server:** Press `Ctrl+C`
- **Build for production:** `bundle exec jekyll build`

---

## Current Status

✅ Ruby is installed  
❌ Docker is not installed (install from link above)  
❌ Bundler needs setup (run `gem install bundler:2.5.18`)

**Recommendation:** Install Docker for the easiest experience, or set up Bundler if you prefer the local method.




