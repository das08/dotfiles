## Brew
export PATH="/opt/homebrew/bin:$PATH"

## Go
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin/$PATH"
export PATH="$PATH:$GOPATH/bin"

## Python
#alias python=python3
#alias pip=pip3



## git-prompt
source ~/.zsh/git-prompt.sh
## git-completion
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit

## prompt git
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

## prompt name
setopt PROMPT_SUBST ; PS1='%F{green}%n%f: %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f\$ '

# alias
alias reload='exec $SHELL -l'
alias pf='ssh -R 8085:localhost:8081 das08@178.128.89.239 -i ~/.ssh/id_do_vps -p 23456'
alias pf2='ssh -R 8085:localhost:8081 das08@164.70.99.218 -i ~/.ssh/id_indigovps -p 23456'
alias pf3='ssh -L 5434:127.0.0.1:5433 indigo'

## Completion
### Case insensitive
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}'

DIRSTACKSIZE=100
setopt AUTO_PUSHD

autoload -Uz compinit && compinit

zstyle ':completion:*' menu select
zstyle ':completion:*:cd:*' ignore-parents parent pwd
zstyle ':completion:*:descriptions' format '%BCompleting%b %U%d%u'

# ignore duplicates
setopt hist_ignore_dups

## gitignore.io
function gi() { curl -sLw n https://www.toptal.com/developers/gitignore/api/$@ ;}

## prezto
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# mysql-client
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/das08/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end