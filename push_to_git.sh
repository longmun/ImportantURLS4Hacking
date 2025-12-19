#!/bin/bash

cd ~/important_URLS

# Option 1: Pull and merge (safer, keeps history)
echo "Pulling changes from remote..."
git pull origin main --no-rebase

# If there are conflicts, you'll need to resolve them
# Then add, commit and push
git add .
git commit -m "Merge remote changes"
git push origin main

echo "Successfully synced with repository!"
