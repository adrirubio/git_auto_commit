#!/bin/bash

# Navigate to the repository
cd /home/adrian/Documents/AI_course

git pull

# Check for changes
if [ -n "$(git status --porcelain)" ]; then
  # Stage all changes
  git add -A .

  # Commit with a generic message
  git commit -m "Auto commit on $(date)"

  # Push changes to GitHub
  git push origin main
else
  echo "No changes to commit"
fi
