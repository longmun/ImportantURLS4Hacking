#!/bin/bash

cd ~/important_URLS

# Fix permissions and remove embedded git repos with sudo
sudo rm -rf OWASP-Testing-Checklist/.git
sudo rm -rf vscode-icons/.git

# Add the changes
git add .

# Commit the cleanup
git commit -m "Remove embedded git repositories"

# Push the changes
git push origin main

echo "Cleanup complete and pushed!"
