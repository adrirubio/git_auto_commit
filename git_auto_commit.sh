#!/bin/bash

# Navigate to the repository
cd /home/adrian/Documents/AI_course

git pull

# Check for changes
if [ -n "$(git status --porcelain)" ]; then

    git status

    # Stage all changes
    git add -A .

    # Commit with a generic message
    git commit -m "Auto commit on $(date)"

    # Push changes to GitHub
    git push origin main

    logger "Pushed to github correctly"
else
    logger "No changes to commit"
fi
