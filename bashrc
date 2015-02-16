if [ -d $HOME/.rbenv ] ; then
    export PATH=$PATH:$HOME/.rbenv/bin:$HOME/.rbenv/shims
fi

if [ -d $HOME/.linuxbrew ] ; then
    export PATH=$HOME/.linuxbrew/bin:$PATH
fi

if [ -d /opt/nacl ] ; then
    export PATH=$PATH:/opt/nacl
fi

export JAVA_HOME=/usr/lib/jvm/java-7-oracle
export GRADLE_HOME=$HOME/.linuxbrew/Cellar/gradle/2.1
export GRADLE_OPTS="-Dorg.gradle.daemon=true"
export HOSTSIZE=5000
export HISTFILESIZE=5000
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias emacs="emacs -nw"
alias clang++="clang++ -std=c++0x -Wall"
alias ls="ls --color"
alias ll="ls -l"
alias irb="pry"
alias rm="trash-put"
alias simplehttpserver="python -mSimpleHTTPServer"
alias mv="mv -i -b"

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
    cat - | sed -e 's/</\&lt;/g' | sed -e 's/>/\&gt;/g' | sed -e 's/\\/\&#92;/g'
}
