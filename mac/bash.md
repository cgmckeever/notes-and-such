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
# brew install bash-completion
#
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

repo() {
  REPO=$(basename $(git remote get-url origin 2> /dev/null) 2> /dev/null)
  echo " ${REPO}"
}

branch() {
  BRANCH=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')
  echo " ${BRANCH}"
}

export PS1="\u@\h \[\033[36m\]\W\[\033[32m\]\$(branch)\[\033[00m\]$ "
```

## .bash_profile
```
#rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
source ~/.bashrc
```
