#!/bin/bash

# init pyproject and install dev dependencies
pdm add --dev mkdocs towncrier pytest tox dynaconf

# init git repo
git init --initial-branch=main

# create .gitignore
function gi() {
	curl -sL https://www.toptal.com/developers/gitignore/api/\$@
}
gi linux,macos,windows,python >.gitignore

# commit new files
git add .
git commit -m "Initial commit"

# init trunk, accept all defaults
trunk init --yes-to-all --nocheck-sample
trunk check --all --fix

# commit Trunk auto-corrected files
git add .
git commit -m "Trunk auto-fixes"

# create repo on GitHub
gh repo create --private --source=. --remote=upstream
