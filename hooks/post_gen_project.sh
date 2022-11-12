#!/bin/bash

# init pyproject and install dev dependencies
pdm add -d mkdocs towncrier pytest tox dynaconf

# init git repo and add to GitHub
git init -b=main -q
gh repo create --private --source=. --remote=upstream

# create .gitignore
function gi() { curl -sL https://www.toptal.com/developers/gitignore/api/\$@; }
gi linux,macos,windows,python >.gitignore

# init dynaconf
pdm run dynaconf init -f=toml

# commit new files
git add .
git commit -m "Initial commit"

# init trunk, accept all defaults
trunk init -y --no-progress
