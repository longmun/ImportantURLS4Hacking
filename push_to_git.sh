#!/bin/bash

# Navigate to the directory
cd ~/important_URLS

# Remove the embedded git repos to avoid submodule issues
sudo rm -rf OWASP-Testing-Checklist/.git
sudo rm -rf vscode-icons/.git

# Configure git user (update with your details)
git config user.name "longmun"
git config user.email "longmunreuben@gmail.com"

# Check current status
git status

# Add all files again
git add .

# Amend the previous commit
git commit --amend -m "Add important URLs and hacking resources"

# Set main branch
git branch -M main

# Push to repository (you'll be prompted for username and PAT)
git push -u origin main

echo "Successfully pushed to repository!"
