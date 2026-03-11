WORDCHARS=${WORDCHARS//\/}

autoload -Uz compinit
compinit

source /etc/zsh_command_not_found

PROMPT="%F{yellow}%B%n@%m%b%f:%F{red}%B%d%b%f:$ "
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
unsetopt complete_aliases


bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey '^H' backward-kill-word

zstyle ':completion:*' use-cache true
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*:*files' ignored-patterns '*.gitkeep' '*?~' '*\#'
zstyle ':completion:*:*' ignore-parents parent pwd

autoload -Uz add-zsh-hook

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib:/usr/local/lib
export LD_PRELOAD="/usr/lib/x86_64-linux-gnu/libjemalloc.so.2"
export LS_COLORS='fi=00;93:di=01;36:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
export RUBY_YJIT_ENABLE=1
export RUBYOPT="-w"
export EDITOR=vim
export DIRENV_LOG_FORMAT=
export HOMEBREW_LOGS=$HOME/.HOMEBREW_LIBRARY/Logs
#export MESA_GL_VERSION_OVERRIDE=3.3

alias irb="pry"
alias emacs="emacs -nw"
alias ls="ls --color --group-directories-first"
alias ll="ls -l"
alias rm="trash-put"
alias shs="ruby -run -e httpd . -p 8080"
alias mv="mv -i -b"
alias top="top -E k"
alias memcln="sudo sysctl vm.drop_caches=1"
alias rsync="rsync -rv"
alias history="history 0"
alias docker-container-stop="docker stop \$(docker ps -qa)"
alias docker-container-prune="docker container prune"
alias docker-images-prune="docker rmi \$(docker images -qa)"
alias docker-system-prune="docker system prune"

path=(
    $HOME/.nodebrew/current/bin
    "node_modules/.bin"
    $path
)

[[ -d $HOME/.rbenv ]] && eval "$(~/.rbenv/bin/rbenv init - --no-rehash zsh)"

if [ -d $HOME/.sdkman ] ; then
    export SDKMAN_DIR="$HOME/.sdkman"
    source "$HOME/.sdkman/bin/sdkman-init.sh"
fi

if [ -d $HOME/.venv ] ; then
    export VIRTUAL_ENV=$HOME/.venv
    export PATH=$VIRTUAL_ENV/bin:$PATH
fi

source <(npm completion)
