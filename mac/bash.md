# mac-bash

## .bashrc
```
export PATH="/usr/local/bin:$PATH"

## node
#
export JAVA_HOME=$(/usr/libexec/java_home)
. ~/.nvm/nvm.sh

export NVM_DIR="/Users/cgmckeever/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

## brew
#
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
  BRANCH=$(git branch 2> /dev/null | sed -e 's/* \(.*\)/(\1)/')
  if [ ! -z $REPO ]; then
    echo " ${BRANCH}"
  fi
}

export PS1="\u@\h \[\033[36m\]\W\[\033[32m\]\$(repo)\$(branch)\[\033[00m\] > "
```

## .bash_profile
```
#rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
source ~/.bashrc
```
