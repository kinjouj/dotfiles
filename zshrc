source ~/.bashrc_my
source "/home/kinjouj/.rbenv/libexec/../completions/rbenv.zsh"

autoload -Uz compinit
autoload -Uz bashcompinit
compinit
bashcompinit

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

setopt auto_cd
setopt auto_pushd
setopt auto_param_slash
setopt auto_param_keys
setopt pushd_ignore_dups
setopt list_packed
setopt complete_aliases
setopt append_history
setopt hist_ignore_dups
setopt share_history
setopt equals
setopt interactive_comments
setopt magic_equal_subst
setopt mark_dirs
setopt glob_dots

alias usermod="usermod -aG"
alias emacs="emacs -nw"
alias clang++="clang++ -std=c++0x -Wall"
alias php-fpm="php-fpm --pid=$HOME/.phpbrew/php/$PHPBREW_PHP/var/run/fpm.pid"
alias ls="ls --color"
alias ll="ls -l"
alias sudo="sudo "

if [ -d /opt/google/chrome ]; then
    alias chrome="/opt/google/chrome/google-chrome"
fi

export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

PROMPT='[%n@%m %~] '

bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line

#zstyle ':completion:*' use-cache true

vip () {
    vi $1
}

compdef _perl_modules vip
