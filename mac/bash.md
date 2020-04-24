# mac-bash

## .bashrc
```
export PATH="/usr/local/bin:$PATH"

#node
export JAVA_HOME=$(/usr/libexec/java_home)
. ~/.nvm/nvm.sh

export NVM_DIR="/Users/cgmckeever/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# brew
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# Git branch in prompt.
# brew install bash-completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

repo_name() {
  basename $(git remote get-url origin) | sed -En "s/(.*).git/ (\1: /p"
}

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1)/'
}

export PS1="\u@\h \W\[\033[32m\]\$(repo_name)$(parse_git_branch)\[\033[00m\] $ "
```

## .bash_profile
```
#rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
source ~/.bashrc
```
