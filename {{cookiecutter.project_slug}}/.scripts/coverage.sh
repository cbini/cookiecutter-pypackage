#!/bin/bash

# check code coverage quickly with the default Python
run --source {{ cookiecutter.project_slug }} -m pytest
coverage report -m
coverage html
$(BROWSER) htmlcov/index.html
