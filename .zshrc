setopt appendhistory extendedglob nomatch notify promptsubst
setopt noautocd nobeep
bindkey -v

export PAGER=less
export EDITOR=vim

source $HOME/.aliases

export PATH=$HOME/bin:$PATH
export HG=/usr/bin/hg
export G_BROKEN_FILENAMES=1

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setup=(perl smlnj pear contrib prompt)

for name in $setup; do source $HOME/.zsh.d/$name.zsh; done
unset setup name
