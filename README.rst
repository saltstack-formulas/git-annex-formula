=================
git-annex-formula
=================

A salt formula that installs and configures git-annex from haskell sources. Tested on Debian but with correct dependency
packages the formula should work on any platform haskell runs. Configuration requires setting a version. Git annex is only
recompiled and reinstalled if versions do not match or no git annex is found.

.. note::

Suggestions, bug reports and comments are welcome.

Available states
================

.. contents::
    :local:

``git-annex``
-------------

Installs and configures the git-annex package from source.
