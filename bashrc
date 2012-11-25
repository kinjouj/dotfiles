export JAVA_HOME=/usr/lib/jvm/java-6-sun-1.6.0.30/
export PERLBREW_ROOT=$HOME/.perlbrew

source $HOME/.perlbrew/etc/bashrc
source $HOME/.nvm/nvm.sh
source $HOME/.phpbrew/bashrc

NODE_VERSION=`nvm version | tr -d " "`

export PERL5LIB=$HOME/.dev/perl/lib/site_perl
export NODE_PATH=$NODE_PATH:$HOME/.nvm/$NODE_VERSION/lib/node_modules
export HOSTSIZE=5000
export HISTFILESIZE=5000

export PATH=$PATH:$HOME/.rbenv/bin
export PATH=$PATH:$HOME/.rbenv/shims
export PATH=$PATH:$HOME/.phpbrew/php/$PHPBREW_PHP/sbin
export PATH=$PATH:/opt/android/tools
export PATH=$PATH:/opt/android/platform-tools
export PATH=$PATH:/opt/ndk
export PATH=$PATH:/opt/hadoop/bin
export PATH=$PATH:/opt/nacl
export PATH=$PATH:/opt/appengine/bin
export PATH=$PATH:/opt/cassandra/bin
export PATH=$PATH:/opt/jsx/bin
export PATH=$PATH:/usr/lib/fluent/ruby/bin
export PATH=$PATH:/opt/gradle/bin

alias clang++="clang++ -std=c++0x -Wall"
alias emacs="emacs -nw"

if [ -d /opt/google/chrome ]; then
    alias chrome="/opt/google/chrome/google-chrome"
fi

if [ $SHLVL = 1 ];then
    screen -q
fi

function vimp {
    vim `perldoc -l $1`
}

function pcd {
    cd `perldoc -l $1 | xargs dirname`
}

complete -C perldoc-complete -o nospace vimp
complete -C perldoc-complete -o nospace pcd
