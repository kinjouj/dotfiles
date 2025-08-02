autoload -Uz compinit
autoload -Uz bashcompinit
compinit
bashcompinit

source ~/.bashrc_my
source /etc/zsh_command_not_found

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

setopt auto_list
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
zstyle ':completion:*:*files' ignored-patterns '*.gitkeep' '*?~' '*\#'
zstyle ':completion:*:*' ignore-parents parent pwd

prompt_precmd() {
  if [ -d .git ] ; then
    local branch="$(git branch --show-current)"
    RPROMPT=" %F{yellow}%B[${branch}]%b%f"
  else
    RPROMPT=""
  fi
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd prompt_precmd

PROMPT="%F{yellow}%B%n@%m%b%f:%F{red}%B%d%b%f:$ "

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
