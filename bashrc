source $HOME/.phpbrew/bashrc
source $HOME/.rbenv/completions/rbenv.zsh

export PATH=$HOME/.plenv/shims:$PATH
export PATH=$PATH:$HOME/.plenv/bin
export PATH=$PATH:$HOME/.rbenv/bin
export PATH=$PATH:$HOME/.rbenv/shims
export PATH=$PATH:$HOME/.phpbrew/php/$PHPBREW_PHP/sbin
export PATH=$PATH:$HOME/.nodebrew/current/bin
export PATH=$PATH:/opt/android/tools
export PATH=$PATH:/opt/android/platform-tools
export PATH=$PATH:/opt/ndk
export PATH=$PATH:/opt/hadoop/bin
export PATH=$PATH:/opt/nacl
export PATH=$PATH:/opt/appengine/bin

export JAVA_HOME=/usr/lib/jvm/java-7-oracle
export ANDROID_HOME=/opt/android
export PERL5LIB=$HOME/.dev/perl/lib/perl5/site_perl/5.16.2
export NODE_PATH=$HOME/.nodebrew/current/lib/node_modules
export PHPBREW_PHP_HOME=$PHPBREW_ROOT/php/$PHPBREW_PHP
export GRADLE_OPTS="-Dorg.gradle.daemon=true"

export HOSTSIZE=5000
export HISTFILESIZE=5000
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias emacs="emacs -nw"
alias clang++="clang++ -std=c++0x -Wall"
alias ls="ls --color"
alias ll="ls -l"
alias sudo="sudo "
alias php-fpm="php-fpm --pid=$PHPBREW_ROOT/php/$PHPBREW_PHP/var/run/fpm.pid"
alias irb="pry"
alias rm="trash-put"
alias simplehttpserver="python -mSimpleHTTPServer"

if [ -d /opt/google/chrome ]; then
    alias chrome="/opt/google/chrome/google-chrome --renderer-process-limit=5"
fi

if [ $SHLVL = 1 ]; then
    screen -a
fi


function escape_kakko {
    cat - | sed -e 's/</\&lt;/g' | sed -e 's/>/\&gt;/g'
}
