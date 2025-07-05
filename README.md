# Wafer Space Preview Repository

This repository serves as the hosting location for pull request previews of the [Wafer Space website](https://github.com/wafer-space/wafer-space.github.io).

## Purpose

This repository is automatically managed by GitHub Actions and serves PR previews at `https://preview.wafer.space/pr-[number]/`.

## Architecture

- **Automated Deployment**: GitHub Actions from the main repository automatically build and deploy PR previews here
- **Custom Domain**: Uses GitHub Pages with custom domain `preview.wafer.space`
- **Directory Structure**: Each PR gets its own directory (`pr-1/`, `pr-2/`, etc.)
- **User-Friendly URLs**: Slugified redirects are created for better UX (`pr-1-feature-name/` → `pr-1/`)
- **Auto-Cleanup**: PR directories are automatically removed when PRs are closed or merged

## Repository Contents

- `pr-[number]/` - Individual PR preview directories containing built Jekyll sites
- `pr-[number]-[slug]/` - User-friendly redirect directories (when applicable)
- `index.html` - Auto-generated listing of all active previews
- `CNAME` - Domain configuration for `preview.wafer.space`
- `generate-preview-index.sh` - Script to generate the preview listing page
- `.github/templates/` - Templates for the preview index page

## Workflow Integration

This repository is integrated with the main repository's PR workflow:

1. **On PR Open/Update**: Builds site with PR-specific baseurl and deploys to `pr-[number]/`
2. **On PR Close**: Removes the PR directory and any associated redirects
3. **Index Generation**: Automatically updates the main index page listing all active previews

## Maintenance

- **Automatic**: The repository is maintained entirely by GitHub Actions
- **History Cleanup**: Periodically cleaned to prevent excessive repository size
- **No Manual Intervention**: Should not require manual commits or changes

## Security

- Uses SSH deploy keys for secure access from the main repository's GitHub Actions
- All deployments are automated and verified before being marked as successful

---

**Note**: This repository is for preview hosting only. All source code and development should occur in the main [wafer-space.github.io](https://github.com/wafer-space/wafer-space.github.io) repository.