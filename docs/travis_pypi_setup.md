# Travis/PyPI Setup {#travis-pypi-setup}

Optionally, your package can automatically be released on PyPI whenever you push a new tag to the master branch.

## Install the Travis CLI tool

This is OS-specific.

## macOS

We recommend the Homebrew travis package:

```sh
brew install travis
```

## Windows and Linux

Follow the official Travis CLI installationinstructions for your operating system:

https://github.com/travis-ci/travis.rb#installation

## How It Works

Once you have the [travis]{.title-ref} command - line tool installed, from the root of your project do:

```sh
travis encrypt --add deploy.password
```

This will encrypt your locally-stored PyPI password and save that to your [.travis.yml]{.title-ref} file. Commit that change to git.

## Your Release Process

If you are using this feature, this is how you would do a patch release:

```sh
bump2version patch
git push --tags
```

This will result in:

- mypackage 0.1.1 showing up in your GitHub tags/releases page
- mypackage 0.1.1 getting released on PyPI

You can also replace patch with [minor]{.title-ref} or [major]{.title-ref}.

## More Details

You can read more about using Travis for PyPI deployment at: https://docs.travis-ci.com/user/deployment/pypi/
