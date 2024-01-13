#!/bin/bash


USERNAME="Mubashir2022skipq"
TOKEN=""


REPO_OWNER="Mubashir2022skipq"
REPO_NAME="Deploy-Application-todo"

# Create the folder
mkdir backend


# Create the file
touch backend.py


# Add all files to the staging area
git add .

# Commit changes
git commit -m "new folder and files added"

# Push to the main branch, including the repository URL and token in the URL
git push "https://${USERNAME}:${TOKEN}@github.com/${REPO_OWNER}/${REPO_NAME}.git" main
