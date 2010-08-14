# general
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory extendedglob nomatch notify promptsubst
unsetopt autocd beep
bindkey -v

# text
export PAGER=less
export EDITOR=vim

# aliases
source $HOME/.aliases

# pear
export PATH=$HOME/pear/bin:$PATH

# perl local::lib
export PATH=$HOME/perl5/bin:$PATH
export PERL5LIB=$HOME/perl5/lib/perl5:$HOME/perl5/lib/perl5/i686-linux-thread-multi:$PERL5LIB
export PERL_MM_OPT=INSTALL_BASE=$HOME/perl5
export MODULEBUILDRC=$HOME/perl5/.modulebuildrc

# sml/nj
export PATH=$PATH:/opt/smlnj/bin

# env
export PATH=$HOME/bin:$PATH
export HG=/usr/bin/hg
export G_BROKEN_FILENAMES=1


# vcs_info
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' formats       '%r %S'
zstyle ':vcs_info:*' actionformats '%r %S -%a-'

# prompt (we don't need no fancy themes)
if [[ -n $(who mom likes | awk '{print $5}' | tr -d '()') ]] then
    PS1='%n@%m %1(V.%v.%1~)%# '
else
    PS1='%1(V.%v.%1~)%# ' # or check out %(!.#.$)
fi
set_vcs_info() {
    vcs_info && psvar[1]=$vcs_info_msg_0_
}
set_title() { # ^nb1
    case $TERM in
        xterm*|rxvt*)
            print -Pn "\e]0;$PS1$1\a"
            ;;
    esac
}
set_eterm_dir() { # this is for emacs' ansi-term
    echo -e "\033AnSiTu $LOGNAME\n\033AnSiTc $PWD\n\033AnSiTh $HOST"
}
precmd_functions=(set_vcs_info set_title)
set_vcs_info
set_title
if [[ $TERM == "eterm-color" ]] then
    precmd_functions+=(set_eterm_dir)
    set_eterm_dir
fi

# completion
zstyle :compinstall filename $HOME/.zshrc

autoload -Uz compinit
compinit

# Notes
#
# ^nb1 Terminal title must be set before compinit or initial xterm title is
# not set (at least when using chpwd_functions).
