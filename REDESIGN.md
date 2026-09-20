# Website design — September 20, 2026

The website is a static GitHub Pages site. The six existing page addresses are preserved.

- Shared visual styles: `assets/css/site.css`
- Print-CV button: `assets/js/site.js`
- Optimized portrait and research figures: `assets/img/optimized/`
- Original design for comparison: `previous/index.html`
- Exact original repository snapshot: branch `backup/before-redesign-2026-09-20`, commit `e6d8789e0887945350c3747852f8fe1a479f9039`

The calculator's conversion and plotting JavaScript was retained unchanged. Existing CV entries, publication titles, authors, statuses, and research links were carried over. Publication statuses are reproduced from the original site and were not independently updated.

## Restore the original site

From a clean checkout of this repository on `main`, restore the saved tree as a new commit:

```sh
git fetch origin
git switch main
git pull --ff-only
git restore --source=origin/backup/before-redesign-2026-09-20 --staged --worktree -- .
git commit -m "Restore original website design"
git push origin main
```

This preserves the redesign in Git history and does not force-push. GitHub Pages will publish the restoration after its deployment finishes. Save any uncommitted work before restoring.

## Editing the redesigned site

Edit the HTML and shared stylesheet directly. The prior `export.sh` script publishes exports from Bootstrap Studio; exporting the old Bootstrap Studio project again can overwrite the redesigned HTML. Pull the latest repository changes before further publishing, and keep a backup before any new full export.

The `previous` directory retains the original pages and assets, with local navigation adjusted to stay inside that directory and search indexing disabled on those comparison pages. The backup branch is the exact untouched original.
