export JAVA_HOME=/usr/lib/jvm/java-6-sun-1.6.0.30/
export PERLBREW_ROOT=$HOME/.perlbrew

source $HOME/.perlbrew/etc/bashrc
source $HOME/.nvm/nvm.sh
source $HOME/.phpbrew/bashrc
source $HOME/.gvm/bin/gvm-init.sh

NODE_VERSION=`nvm version | tr -d " "`

export PERL5LIB=$HOME/.dev/perl/lib/site_perl
#export NODE_PATH=$NODE_PATH:$HOME/.nvm/$NODE_VERSION/lib/node_modules
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
