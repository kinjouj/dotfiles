if [ -d $HOME/.rbenv ] ; then
    eval "$(~/.rbenv/bin/rbenv init - --no-rehash bash)"
    #export PATH=$PATH:$HOME/.rbenv/bin:$HOME/.rbenv/shims
fi

if [ -d $HOME/.nodebrew ] ; then
    export PATH=$HOME/.nodebrew/current/bin:$PATH
    export NODE_PATH=$HOME/.nodebrew/current/lib/node_modules
fi

if [ -d $HOME/.venv ] ; then
    export VIRTUAL_ENV=$HOME/.venv
    export PATH=$VIRTUAL_ENV/bin:$PATH
fi

if [ -d $HOME/.sdkman ] ; then
    source "$HOME/.sdkman/bin/sdkman-init.sh"
fi

if [ -d $HOME/.swiftly ] ; then
    . "$HOME/.swiftly/env.sh"
fi

if [ -d $HOME/Android ] ; then
    export ANDROID_HOME=$HOME/Android/Sdk
    export PATH=$PATH:$ANDROID_HOME/emulator
    export PATH=$PATH:$ANDROID_HOME/platform-tools
    export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
fi

export PS1="\[\e]0;\u:\w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;31m\]\w\[\033[00m\]\$ "

export HOMEBREW_LOGS=$HOME/.HOMEBREW_LIBRARY/Logs
export HOSTSIZE=5000
export HISTFILESIZE=5000
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib:/usr/local/lib
export LS_COLORS='fi=00;93:di=01;36:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
export PATH=$HOME/.nodebrew/current/bin:$PATH


alias emacs="emacs -nw"
alias clang++="clang++ -std=c++0x -Wall"
alias ls="ls --color --group-directories-first"
alias ll="ls -l"
alias irb="pry"
alias rm="trash-put"
alias shs="ruby -run -e httpd . -p 8080"
alias mv="mv -i -b"
alias top="top -E k"
alias memcln="sudo sysctl vm.drop_caches=1"
alias rsync="rsync -rv"
alias history="history 0"
alias open="LANG=C open"
alias docker-container-stop="docker stop \$(docker ps -qa)"
alias docker-container-prune="docker container prune"
alias docker-images-prune="docker rmi \$(docker images -qa)"
alias docker-system-prune="docker system prune"

#if [ $SHLVL = 1 ]; then
#    screen -a
#fi

xmodmap -e 'keycode 49 = 0x0000'
