#export LESSOPEN="|$HOME/local/bin/lesspipe.sh %s"
export PATH=~/local/bin:$PATH
export LD_LIBRARY_PATH=~/local/lib:$LD_LIBRARY_PATH
export PYTHONPATH=~/local/lib/python:$PYTHONPATH
export EDITOR=vim
export PAGER=less

keychain ~/.ssh/id_rsa
. ~/.ssh-agent > /dev/null

. ~/.bashrc
