#!/bin/bash

# --- Project Setup ---

# Get project details (keep these, as they are useful in a template)
read -r -p "Enter your project name: " PROJECT_NAME
read -r -p "Enter a brief description of your project: " PROJECT_DESCRIPTION

# --- (Remove git init and remote setup, as these are done by GitHub) ---

# --- User Authentication ---
# (This part might need adjustments depending on how you want to handle 
# authentication in the template. You could potentially remove it or provide
# instructions for users to set up their credentials after cloning.)

# Use git credential helper for secure storage of credentials
git config --global credential.helper store

echo "Please enter your GitHub credentials:"
read -r -p "Enter your GitHub username: " USERNAME
read -r -s -p "Enter your GitHub personal access token: " TOKEN
echo ""  # Print a newline after the password input

# Store credentials securely using the credential helper
git credential approve <<< "protocol=https
host=github.com
username=$USERNAME
password=$TOKEN"

# --- Project Structure ---

# (The directories will already be present in the template repository)

# --- Configuration Files ---

# (The configuration files will be in the template repository. 
# You might want to use template variables to make them more customizable.)

# Example in pyproject.toml:
# [tool.poetry]
# name = "{{ cookiecutter.project_name }}" 
# ...

# --- (Remove the GitHub Actions workflow file creation, as it will be 
# already in the template repository) ---

echo "Project setup complete!"
