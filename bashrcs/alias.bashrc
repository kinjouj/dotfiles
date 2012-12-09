alias clang++="clang++ -std=c++0x -Wall"
alias emacs="emacs -nw"
alias sublime="sublime-text > /dev/null &"
alias php-fpm="php-fpm --pid=$HOME/.phpbrew/php/$PHPBREW_PHP/var/run/fpm.pid"
alias gradle="gradle -q"

if [ -d /opt/google/chrome ]; then
    alias chrome="/opt/google/chrome/google-chrome"
fi
