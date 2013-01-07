source ~/.bashrc_my

autoload -Uz compinit
compinit

setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt list_packed
setopt complete_aliases

alias ls="ls --color"
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

PROMPT='[%n@%m %~] '
