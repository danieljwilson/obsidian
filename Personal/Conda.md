#learning 

## Tips
![[conda-cheatsheet.pdf]]

Good [tutorial](https://medium.com/dunder-data/anaconda-is-bloated-set-up-a-lean-robust-data-science-environment-with-miniconda-and-conda-forge-b48e1ac11646) on minimal env setup for data science.

## Commonly used

| Task | Syntax |
| --- | --- |
| List of environments | `conda info --envs` |
| Activate env | `conda activate ENVNAME` |
| Deactivate env | `conda deactivate` |
| Create env | `conda create -n ENVNAME` |
| Export a YAML file | `conda env export --name ENVNAME > envname.yml` |
| Create env with YAML file | `conda env create --file envname.yml` |
| Make copy of env | `conda create --clone ENVNAME --name NEWENV` |
| See which packages are installed | `conda list` |
| Delete env | `conda remove --name ENVNAME --all` | 


### Example `env` creation
1. Create an empty environment `conda create -n minimal_ds`
2. Activate the environment `conda activate minimal_ds`
3. Add conda-forge as the first channel `conda config --env --add channels conda-forge`
4. Ensure that conda-forge is used if the package is available `conda config --env --set channel_priority strict`
5. Install packages `conda install pandas scikit-learn matplotlib notebook`

## Notes
* I have opted to use the miniconda installation and then made a base Python 3 environment that I clone for each new project.
* Things can get hairy if different packages are installed from different channels. This is why in the [[Conda Tips#Example env creation]] there is the command to make `conda-forge` the priority channel.

