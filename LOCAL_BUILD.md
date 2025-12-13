# Building and Previewing Your Site Locally

This guide provides instructions for building and previewing your Jekyll-based academic website locally.

## Method 1: Using Docker (Recommended) 🐳

This is the easiest and most reliable method, as it handles all dependencies automatically.

### Prerequisites
- Install [Docker](https://docs.docker.com/get-docker/)
- Install [Docker Compose](https://docs.docker.com/compose/install/)

### Steps

1. **Pull the pre-built Docker image and start the server:**
   ```bash
   docker compose pull
   docker compose up
   ```

   Or for the slim version (smaller download, ~100MB instead of ~400MB):
   ```bash
   docker compose -f docker-compose-slim.yml up
   ```

2. **View your site:**
   - Open your browser and navigate to `http://localhost:8080`
   - You should see your website running
   - Changes you make to files will automatically be reflected (may take a few seconds)

3. **Stop the server:**
   - Press `Ctrl+C` in the terminal where Docker is running

### Notes
- On first run, Docker will download the image (~400MB or ~100MB for slim version)
- The site runs in development mode, so changes are hot-reloaded
- Port 8080 is for the web server, port 35729 is for live reload

---

## Method 2: Legacy Local Setup (No Docker)

If you prefer not to use Docker, you can run Jekyll directly on your machine.

### Prerequisites
- [Ruby](https://www.ruby-lang.org/en/downloads/) and [Bundler](https://bundler.io/)
- [Python](https://www.python.org/) and [pip](https://pypi.org/project/pip/)
- For managing Ruby gems, consider using [rbenv](https://github.com/rbenv/rbenv)
- For managing Python packages, consider using [venv](https://docs.python.org/3/library/venv.html) or [conda](https://docs.conda.io/)

### Steps

1. **Install Ruby dependencies:**
   ```bash
   bundle install
   ```

2. **Install Python dependencies (for Jupyter notebook support):**
   ```bash
   pip install jupyter
   ```

3. **Start the Jekyll development server:**
   ```bash
   bundle exec jekyll serve
   ```

4. **View your site:**
   - Open your browser and navigate to `http://localhost:4000`
   - Changes you make will be automatically reflected

5. **Stop the server:**
   - Press `Ctrl+C` in the terminal

---

## Building for Production

If you want to build the static site files (for deployment):

### Using Docker:
```bash
docker compose run --rm jekyll bundle exec jekyll build
```

### Using Local Setup:
```bash
bundle exec jekyll build
```

This will generate the static site in the `_site/` directory.

### Optional: Remove unused CSS
```bash
purgecss -c purgecss.config.js
```

This optimizes CSS files by removing unused classes.

---

## Troubleshooting

- **Port already in use**: If port 8080 or 4000 is already in use, you can change it in `docker-compose.yml` or use `jekyll serve --port 4001`
- **Docker permission issues**: Make sure Docker has proper permissions on macOS
- **Ruby version issues**: If using the legacy method, ensure you have a compatible Ruby version (check `Gemfile` for requirements)

---

## Additional Resources

- Full installation guide: See `INSTALL.md`
- Jekyll documentation: https://jekyllrb.com/docs/
- Theme documentation: https://alshedivat.github.io/al-folio/




