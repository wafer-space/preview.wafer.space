# Wafer Space

The official website for Wafer Space - democratizing silicon design and manufacturing.

## About

Wafer Space is on a mission to make custom silicon accessible to everyone. This repository contains the source code for our website at [wafer.space](https://wafer.space).

## Building the Site

This is a Jekyll-based website that uses a proprietary theme stored as a git submodule.

### Prerequisites

- Ruby (with Bundler)
- Jekyll
- Git (with submodule support)

### Quick Start

```bash
# Clone the repository with submodules
git clone --recursive https://github.com/wafer-space/wafer-space.github.io.git
cd wafer-space.github.io

# Install dependencies
make install

# Build the site
make build

# Serve locally (http://localhost:4000)
make serve
```

### Available Make Commands

- `make help` - Show all available commands
- `make build` - Build the Jekyll site
- `make serve` - Serve the site locally with auto-regeneration
- `make dev` - Alias for 'serve'
- `make production` - Build site in production mode
- `make clean` - Remove generated files and caches
- `make install` - Install Ruby dependencies
- `make update` - Update Ruby dependencies
- `make test` - Build site and run tests

### Manual Build (without Make)

```bash
# Set up Ruby path
export PATH=$PATH:/home/tim/.local/share/gem/ruby/3.2.0/bin

# Install dependencies
bundle install

# Build the site
bundle exec jekyll build

# Serve locally
bundle exec jekyll serve
```

## Theme

The website uses a proprietary Jekyll theme that is included as a git submodule in the `_theme` directory. The theme is not open source and is licensed separately.

### Theme Updates

To update the theme submodule to the latest version:

```bash
git submodule update --remote _theme
git add _theme
git commit -m "Update theme to latest version"
```

## Site Structure

- `_advisors/` - Advisor profiles
- `_authors/` - Author information
- `_friends/` - Partner organizations
- `_posts/` - Blog posts and news
- `_data/` - Site configuration and navigation
- `_includes/` - Site-specific overrides for theme components
- `_plugins/` - Custom Jekyll plugins (includes theme loader)
- `assets/` - Site-specific assets (images, etc.)

## Deployment

The site is automatically deployed via GitHub Pages when changes are pushed to the main branch.

### Pull Request Previews

Pull requests to the `main` branch automatically get **live preview deployments** at custom URLs! Each PR gets its own preview URL like `https://preview.wafer.space/pr-123/` that updates with every commit. See [.github/workflows/pr-preview.md](.github/workflows/pr-preview.md) for details.

### GitHub Actions Setup

Since the theme is stored as a private git submodule, GitHub Actions requires SSH deploy key configuration to access it during builds.

**Setup required:**
1. Generate an SSH key pair for theme repository access
2. Add the public key as a deploy key to the `wafer-space-jekyll-theme` repository with read access
3. Add the private key as a repository secret named `JEKYLL_THEME_KEY`
4. The workflow will automatically use the SSH key to access the private theme repository

## Contributing

For site content updates, please submit a pull request. For theme-related issues, please contact the Wafer Space team as the theme is proprietary.

## License

The website content (excluding the theme) is copyright Wafer Space. The Jekyll theme in `_theme/` is proprietary and not licensed for redistribution.