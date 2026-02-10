---
title: poetry python package and dependency manager
aliases: []
summary: 
created: 2021-02-08 14:00
modified: 2021-02-08 14:00
tags: []
---

- [[conda package manager]], [[python - virtual environments]]
[[python]]
[[python - venv]]
[[python - dependency manager]]
[[python - package manager]]


# Notes
Poetry is a dependency and package manager, and a virtual environment manager with publishing capabilities.

## Install
==Note [from guide](https://hackersandslackers.com/python-poetry-package-manager/)== It's **_critically important_** that we install Poetry for python3 as opposed to Python, contrary to what the official docs would have you copy-and-paste.^[This did not work for me. I used the command from the actual poetry site] 

```shell
$ curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3
```

## 1 Create new project
```sh
$ poetry new project-name
Created package project_name in project-name
$ cd project-name/
$ ls
README.rst  project_name    pyproject.toml  tests
```

**Folder Structure**
```sh
project-name
├── pyproject.toml
├── README.rst
├── project_name
│   └── __init__.py
└── tests
    ├── __init__.py
    └── test_project_name.py
```

## 2 Edit `.toml`
You can do this manually, or delete the default file:
```sh
$ rm pyproject.toml
```

And then interactively set the values:
```sh
$ poetry init

This command will guide you through creating your pyproject.toml config.

Package name [demo-project]:  
Version [0.1.0]:  
Description []:  Demo Project
Author [None, n to skip]:  Ken Farr
License []:  MIT
Compatible Python versions [^3.7]: >=3.9,<4.0

Would you like to define your main dependencies interactively? (yes/no) [yes] no
Would you like to define your dev dependencies (require-dev) interactively (yes/no) [yes] no
```
This regenerates the file.

## 3 Create virtual environment
Two options.

If you have specified your dependencies in the `.toml` file then you can use
```sh
$ poetry install
```

If a virtual environment does not already exist, the first time you run the `shell` command a virtual environment will be created.


### Installation location
Note that you can either have envs saved in a central location (good for reuse) or locally in the project (plays a bit more nicely with `VS Code`).

You just have to change the `virtualenvs.in-project` variable in the `config` file. Default is `false`

```sh
$ poetry config virtualenvs.in-project true
```

## Specify dependencies
You can either directly edit the `.toml` or use the `add` command.
The `add` command adds required packages to your `pyproject.toml` and installs them.

Good description of `.toml` files [here](https://hackersandslackers.com/python-poetry-package-manager/).

```sh
$ poetry add requests pendulum
```

You also can specify a constraint when adding a package, like so:

```sh
$ poetry add pendulum@^2.0.5
$ poetry add "pendulum>=2.0.5"
```

### `--dev` dependencies
These dependencies will be available only during development, Poetry will not include them when building and publishing the project.

For example:
```sh
$ poetry add --dev matplotlib flake8 black mypy jupyterlab pytest
```

## Updating
In order to get the latest versions of the dependencies and to update the `poetry.lock` file, you should use the `update` command.

```sh
$ poetry update
```

This will resolve all dependencies of the project and write the exact versions into `poetry.lock`.

## tl;dr
- `poetry new [project-name]` (initiate new project)
- `cd/project-name` (move into directory)
- `rm pyproject.toml` (optional, can edit manually)
- `poetry init` (update `.toml`)
- `poetry install` (create virtual env, based on `.toml`)
	- might want to run `poetry run pip install pip==[version]` ([latest version](https://pip.pypa.io/en/stable/installing/))
- `poetry shell` (launch virtual env)
- `code-insiders .` (launch `VS Code`)

[filename](file:////Users/djw/Documents/pCloud_synced/Academics/Projects/2020_thesis/thesis_experiments/3_experiments/3_3_experience_sampling/3_3_3_data_analysis/pyproject.toml)

## Additional poetry commands
| Command | Action |
| --- | --- |
| `show` | list all available packages |
| `show [package-name]` | see the details of a particular package |
| `check` | validates the structure of the `pyproject.toml` file |
| `poetry self:update`| update poetry to latest stable version|
| `poetry add -D [package-name]` | add a dev package to virtual env |
| `poetry remove -D [package-name]` | remove a dev package from a virtual env |
|`update`| check for new versions of dependencies|
|`poetry config --list`| see config file|
|`poetry config virtualenvs.in-project [true]`| specify location of virtual environment |
| `exit`| deactivate virtual environment and exit shell |

## Uninstall
```sh
POETRY\_UNINSTALL=1 bash -c 'curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python'
```




# References
- [poetry](https://python-poetry.org/)
- https://farr.ai/vs-code-python-setup.html
- [integrating with vs code](https://www.pythoncheatsheet.org/blog/python-projects-with-poetry-and-vscode-part-2/)