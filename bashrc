export JAVA_HOME=/usr/lib/jvm/java-6-sun-1.6.0.30
#export HADOOP_HOME=/opt/hadoop

export PERL5LIB=$HOME/.dev/perl/lib/site_perl/5.16.1
export NODE_PATH=$NODE_PATH:$HOME/.nvm/v0.8.8/lib/node_modules
export PERLBREW_ROOT=$HOME/.perlbrew

source $HOME/.perlbrew/etc/bashrc
source $HOME/.nvm/nvm.sh
source $HOME/.phpbrew/bashrc

export PATH=$PATH:$HOME/.rbenv/bin
export PATH=$PATH:$HOME/.rbenv/shims
export PATH=$PATH:$HOME/.phpbrew/php/php-5.4.6/sbin
export PATH=$PATH:/opt/android/tools
export PATH=$PATH:/opt/android/platform-tools
export PATH=$PATH:/opt/ndk
export PATH=$PATH:/opt/hadoop/bin
export PATH=$PATH:/opt/nacl
export PATH=$PATH:/opt/appengine/bin
export PATH=$PATH:/opt/cassandra/bin

alias clang++="clang++ -std=c++0x -Wall"
alias emacs="emacs -nw"

if [ -d /opt/google/chrome ]; then
    alias chrome="/opt/google/chrome/google-chrome"
fi

if [ $SHLVL = 1 ];then
    screen
fi

function vimp {
    vim `perldoc -l $1`
}

function pcd {
    cd `perldoc -l $1 | xargs dirname`
}

complete -C perldoc-complete -o nospace vimp
complete -C perldoc-complete -o nospace pcd
