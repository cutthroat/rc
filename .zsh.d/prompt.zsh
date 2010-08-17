# (we don't need no fancy themes)
if [[ -n $(who mom likes | awk '{print $5}' | tr -d '()') ]]; then
    PS1='%n@%m %1(V.%v.%1~)%# '
else
    PS1='%1(V.%v.%1~)%# ' # or check out %(!.#.$)
fi
set_vcs_info() {
    vcs_info && psvar[1]=$vcs_info_msg_0_
}
set_title() { # *
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
if [[ $TERM == "eterm-color" ]]; then
    precmd_functions+=(set_eterm_dir)
    set_eterm_dir
fi

# * Terminal title must be set before compinit or initial xterm title is
# not set (at least when using chpwd_functions).
