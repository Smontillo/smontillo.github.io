#!/bin/bash
set -e  # stop on first error

# go to the repo folder
cd "/Users/montillo214/Documents/Documents/WebPage/smontillo.github.io"

git add .

# Only commit if there are changes
if ! git diff --cached --quiet; then
  git commit -m "Auto-export from Bootstrap Studio"
  git push origin main
else
  echo "No changes to commit."
fi