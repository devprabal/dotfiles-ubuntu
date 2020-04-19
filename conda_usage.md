The conda package manager (of anaconda) got installed with its instructions (and path) in `~/.bashrc`.
So conda in zsh will say `zsh: command not found: conda`.
**Workaround** - 
I will not source `.bashrc` at the end of `.zshrc` because I have found it makes zsh loading slow.
So instead, to run `conda`, I will type `$ bash` in the zsh terminal window.
Then I will perform conda commands in the bash session opened in a zsh session.
A screenshot show these steps - 
[!conda activate *env_name*](assets/conda_usage.png)
