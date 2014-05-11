# phpbrew
if [ -d $HOME/.phpbrew ] ; then
    source $HOME/.phpbrew/bashrc
    export PATH=$PATH:$HOME/.phpbrew/php/$PHPBREW_PHP/sbin
    export PHPBREW_PHP_HOME=$PHPBREW_ROOT/php/$PHPBREW_PHP
    alias php-fpm="php-fpm --pid=$PHPBREW_ROOT/php/$PHPBREW_PHP/var/run/fpm.pid"
fi

# anyenv
if [ -d $HOME/.anyenv ] ; then
    export PATH=$HOME/.anyenv/bin:$PATH
    eval "$(anyenv init -)"

    ND_ENV=`ndenv version | awk '{print $1}'`
    ND_ENV_PATH=$HOME/.anyenv/envs/ndenv/versions/$ND_ENV/lib/node_modules

    if [ -d $ND_ENV_PATH ] ; then
        export NODE_PATH=$ND_ENV_PATH
    fi
fi

# svm
if [ -d $HOME/.svm ] ; then
    export PATH=$PATH:$HOME/.svm/current/rt/bin
fi

# maven
if [ -d /opt/maven ] ; then
    export PATH=$PATH:/opt/maven/bin
fi

if [ -d /opt/android ] ; then
    export ANDROID_HOME=/opt/android
    export PATH=$PATH:/opt/android/tools
    export PATH=$PATH:/opt/android/platform-tools

    if [ -d /opt/ndk ] ; then
        export PATH=$PATH:/opt/ndk
    fi
fi

if [ -d /opt/hadoop ] ; then
    export PATH=$PATH:/opt/hadoop/bin
fi

if [ -d /opt/nacl ] ; then
    export PATH=$PATH:/opt/nacl
fi

if [ -d /opt/appengine ] ; then
    export PATH=$PATH:/opt/appengine/bin
fi

export JAVA_HOME=/usr/lib/jvm/java-7-oracle
export GRADLE_OPTS="-Dorg.gradle.daemon=true"
export HOSTSIZE=5000
export HISTFILESIZE=5000
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias emacs="emacs -nw"
alias clang++="clang++ -std=c++0x -Wall"
alias ls="ls --color"
alias ll="ls -l"
alias sudo="sudo "
alias irb="pry"
alias rm="trash-put"
alias simplehttpserver="python -mSimpleHTTPServer"

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi


if [ -d /opt/google/chrome ]; then
    alias chrome="/opt/google/chrome/google-chrome --renderer-process-limit=5"
fi

if [ $SHLVL = 1 ]; then
    screen -a
fi

function escape_kakko {
    cat - | sed -e 's/</\&lt;/g' | sed -e 's/>/\&gt;/g'
}
