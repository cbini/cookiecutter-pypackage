# PyPI Release Checklist

## Before Your First Release

1.  Register the package on PyPI:

    ```sh
    python setup.py register
    ```

2.  Visit PyPI to make sure it registered.

## For Every Release

1.  Update HISTORY.md

2.  Commit the changes:

    ```sh
    git add HISTORY.rst
    git commit -m "Changelog for upcoming release 0.1.1."
    ```

3.  Update version number (can also be patch or major)

    ```sh
    bump2version minor
    ```

4.  Install the package again for local development, but with the new version number:

    ```sh
    python setup.py develop
    ```

5.  Run the tests:

    ```sh
    tox
    ```

6.  Push the commit:

    ```sh
    git push
    ```

7.  Push the tags, creating the new release on both GitHub and PyPI:

    ```sh
    git push --tags
    ```

8.  Check the PyPI listing page to make sure that the README, release notes, and roadmap display properly. If not, try one of these:

    1.  Copy and paste the RestructuredText into http://rst.ninjs.org/ to find out what broke the formatting.

    2.  Check your long_description locally:

        ```sh
        pip install readme_renderer
        python setup.py check -r -s
        ```

9.  Edit the release on GitHub (e.g. https://github.com/audreyr/cookiecutter/releases). Paste the release notes into the release\'s release page, and come up with a title for the release.

## About This Checklist

This checklist is adapted from:

-   https://gist.github.com/audreyr/5990987
-   https://gist.github.com/audreyr/9f1564ea049c14f682f4

It assumes that you are using all features of Cookiecutter PyPackage.
