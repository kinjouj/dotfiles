source ~/.bashrc_my

autoload -Uz compinit
autoload -Uz bashcompinit
compinit
bashcompinit

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
PROMPT='[%n@%m %~] '

setopt auto_cd
setopt auto_pushd
setopt auto_param_slash
setopt auto_param_keys
setopt pushd_ignore_dups
setopt list_packed
setopt complete_aliases
setopt append_history
setopt hist_ignore_dups
#setopt share_history
setopt equals
setopt interactive_comments
setopt magic_equal_subst
setopt mark_dirs
setopt glob_dots

bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line

zstyle ':completion:*' use-cache true
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/home/kinjouj/.gvm/bin/gvm-init.sh" ]] && source "/home/kinjouj/.gvm/bin/gvm-init.sh"
