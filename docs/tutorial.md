# Tutorial

> Did you find any of these instructions confusing? [Edit this file](https://github.com/audreyfeldroy/cookiecutter-pypackage/blob/master/docs/tutorial.rst) and submit a pull request with your improvements!

To start with, you will need a [GitHub account](https://github.com/) and an account on [PyPI](https://pypi.python.org/pypi). Create these before you get started on this tutorial. If you are new to Git and GitHub, you should probably spend a few minutes on some of the tutorials at the top of the page at [GitHub Help](https://help.github.com/).

## Step 1: Install Cookiecutter

First, you need to create and activate a virtualenv for the package project. Use your favorite method, or create a virtualenv for your new package like this:

```sh
virtualenv ~/.virtualenvs/mypackage
```

Here, `mypackage` is the name of the package that you'll create.

Activate your environment:

```sh
source bin/activate
```

On Windows, activate it like this. You may find that using a Command Prompt window works better than gitbash.

```powershell
\path\to\env\Scripts\activate
```

Install cookiecutter:

```bash
pip install cookiecutter
```

## Step 2: Generate Your Package

Now it's time to generate your Python package.

Use cookiecutter, pointing it at the cookiecutter-pypackage repo:

```bash
cookiecutter https://github.com/audreyfeldroy/cookiecutter-pypackage.git
```

You'll be asked to enter a bunch of values to set the package up. If you don't know what to enter, stick with the defaults.

## Step 3: Create a GitHub Repo

Go to your GitHub account and create a new repo named `mypackage`, where `mypackage` matches the `[project_slug]` from your answers to running cookiecutter. This is so that Travis CI and pyup.io can find it when we get to Step 5.

> If your virtualenv folder is within your project folder, be sure to add the virtualenv folder name to your .gitignore file.

You will find one folder named after the `[project_slug]`. Move into this folder, and then setup git to use your GitHub repo and upload the code:

```bash
cd mypackage
git init .
git add .
git commit -m "Initial skeleton."
git remote add origin git@github.com:myusername/mypackage.git
git push -u origin master
```

Where `myusername` and `mypackage` are adjusted for your username and package name.

You'll need a ssh key to push the repo. You can [Generate](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/) a key or [Add](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/) an existing one.

## Step 4: Install Dev Requirements

You should still be in the folder containing the `requirements_dev.txt` file.

Your virtualenv should still be activated. If it isn't, activate it now. Install the new project's local development requirements:

```bash
pip install -r requirements_dev.txt
```

## Step 5: Set Up Travis CI

[Travis CI com](https://travis-ci.com/) is a continuous integration tool used to prevent integration problems. Every commit to the master branch will trigger automated builds of the application.

Login using your Github credentials. It may take a few minutes for Travis CI to load up a list of all your GitHub repos. They will be listed with boxes to the left of the repo name, where the boxes have an `X` in them, meaning it is not connected to Travis CI.

Add the public repo to your Travis CI account by clicking the `X` to switch it \"on\" in the box next to the `mypackage` repo. Do not try to follow the other instructions, that will be taken care of next.

In your terminal, your virtualenv should still be activated. If it isn't, activate it now. Run the Travis CLI tool to do your Travis CI setup:

```bash
travis encrypt --add deploy.password
```

This will:

- Encrypt your PyPI password in your Travis config.
- Activate automated deployment on PyPI when you push a new tag to
  master branch.

See `travis-pypi-setup`{.interpreted-text role="ref"} for more information.

## Step 6: Set Up Read the Docs

[Read the Docs](https://readthedocs.org/) hosts documentation for the open source community. Think of it as Continuous Documentation.

Log into your account at [Read the Docs](https://readthedocs.org/) . If you don't have one, create one and log into it.

If you are not at your dashboard, choose the pull-down next to your username in the upper right, and select \"My Projects\". Choose the button to Import the repository and follow the directions.

Now your documentation will get rebuilt when you make documentation changes to your package.

## Step 7: Set Up pyup.io

[pyup.io](https://pyup.io/) is a service that helps you to keep your requirements files up to date. It sends you automated pull requests whenever there's a new release for one of your dependencies.

To use it, create a new account at [pyup.io](https://pyup.io/) or log into your existing account.

Click on the green `Add Repo` button in the top left corner and select the repo you created in Step 3. A popup will ask you whether you want to pin your dependencies. Click on `Pin` to add the repo.

Once your repo is set up correctly, the pyup.io badge will show your current update status.

## Step 8: Release on PyPI

The Python Package Index or [PyPI](https://pypi.python.org/pypi) is the official third-party software repository for the Python programming language. Python developers intend it to be a comprehensive catalog of all open source Python packages.

When you are ready, release your package the standard Python way.

See [PyPI Help](https://pypi.org/help/#publishing) for more information about submitting a package.

Here's a release checklist you can use: https://github.com/audreyfeldroy/cookiecutter-pypackage/blob/master/docs/pypi_release_checklist.rst

## Having problems?

Visit our `troubleshooting`{.interpreted-text role="ref"} page for help. If that doesn't help, go to our [Issues](https://github.com/audreyfeldroy/cookiecutter-pypackage/issues) page and create a new Issue. Be sure to give as much information as possible.
