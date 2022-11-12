#!/bin/bash

pdm init

trunk init -y

gh repo create

git ignore linux,macos,windows,python >.gitignore
