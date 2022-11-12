#!/bin/bash

# init pyproject and install dev dependencies
pdm add --no-sync -d mkdocs towncrier pytest tox dynaconf

# init dynaconf
pdm run dynaconf init -f toml --path=.dynaconf/

# init git repo and add to GitHub
gh repo create --private --source=. --remote=upstream

# create .gitignore
function gi() { curl -sL https://www.toptal.com/developers/gitignore/api/\$@; }
gi linux,macos,windows,python >.gitignore

# init trunk, accept all defaults
trunk init -y
