---
title: python - venv
aliases: []
summary: 
created: 2021-01-09 22:28:38
modified: 2021-01-09 22:28:38
tags: []
---

- [[conda package manager]], [[python - virtual environments]]

```sh
# check if the python version you want has been installed (e.g., Python 3.9)
python3.9

# if command not found, download and install that python version from https://www.python.org/downloads/

# navigate to your working directory
cd my_working_directory

# create venv
# python3.x -m venv your_environment_name
python3.9 -m venv venv 

# activate venv
source venv/bin/activate

# deactivate venv
deactivate

# check python version
python -V

# list installed packages
pip list

# install package in venv
pip install pandas
```

Using `venv` with [[vscode]]
- open a folder in [[vscode]] first
- open terminal in vscode, then install a virtual environment with `venv` (follow instructions above)
- create a new python file and save it (this step will activate the Python extension in vscode)
- select your python environment (select it via menubar - bottom left, or use command palette)
- check `.vscode/settings.json` to ensure the `python.pythonPath` is set to the correct environment
    - if it's wrong, manually update it
- open a new terminal to check if the correct python environment is automatically loaded 
- use `python -V` to check python version in terminal

# References
- https://www.python.org/downloads/
- https://stackoverflow.com/questions/22681824/how-do-i-use-different-python-version-in-venv-from-standard-library-not-virtua
- https://docs.python.org/3/library/venv.html#module-venv
**VIDEOS**
- [Python Tutorial: VENV (Mac & Linux) - How to Use Virtual Environments with the Built-In venv Module](https://www.youtube.com/watch?v=Kg1Yvry_Ydk)
- 