#export LESSOPEN="|$HOME/local/bin/lesspipe.sh %s"
export PATH=~/local/bin:$PATH
export LD_LIBRARY_PATH=~/local/lib:$LD_LIBRARY_PATH
export PYTHONPATH=~/local/lib/python:$PYTHONPATH
export EDITOR=vim
export PAGER=less

eval $(keychain --quiet --eval --agents ssh id_rsa)

. ~/.bashrc
