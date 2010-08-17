# vcs_info
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' formats       '%r %S'
zstyle ':vcs_info:*' actionformats '%r %S -%a-'

# completion
zstyle :compinstall filename $HOME/.zshrc
autoload -Uz compinit
compinit
