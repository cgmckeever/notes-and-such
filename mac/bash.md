# mac-bash

## .bashrc
```

alias resource='source ~/.bashrc'

# GO
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOROOT/bin
export GOSUMDB=off

GRAY='\033[1;30m'
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
PURPLE='\033[1;35m'
WHITE='\033[1;37m'
BLUE='\033[1;34m'
CYAN='\033[1;36m'
NC='\033[0m'

# BREW (is this needed)
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

## Git branch in prompt.
# sudo find / -type f -name "git-completion.bash"
# brew install bash-completion (if not installed)
# sudo cp /current/path/to/your/git-completion.bash /usr/local/etc/bash_completion.d/git-completion.bash
#
source /usr/local/etc/bash_completion.d/git-completion.bash

repo() {
    REPO=$(basename $(git remote get-url origin 2> /dev/null) 2> /dev/null | sed -e 's/\.git//')
    if [ ! -z $REPO ]; then
        echo " ${REPO}"
    fi
}

branch() {
   REPO=$(basename $(git remote get-url origin 2> /dev/null) 2> /dev/null)
    if [ ! -z $REPO ]; then
        BRANCH=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')
        if [ ! -z $BRANCH ]; then
            echo " ${BRANCH}"
        else
            echo -e " $RED[detached]"
        fi
    fi
}


export PROMPT=$PS1
export PS1="\u@\h ${CYAN}\W/${GREEN}\$(repo)\$(branch)> ${WHITE}"

```

## .bash_profile
```
#rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
source ~/.bashrc
```
