#! /bin/zsh
# Load zsh_completion
fpath=(/usr/local/share/zsh-completions $fpath)

# Load nvm
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  sudo
  web-search
)

# Load needed source
source $ZSH/oh-my-zsh.sh
source /etc/zprofile

# Load rbenv
eval "$(rbenv init -)"

# Powerline configuration
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time root_indicator background_jobs time battery)

POWERLEVEL9K_BATTERY_ICON="BAT"

POWERLEVEL9K_CONTEXT_TEMPLATE="%n"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='093'

POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# Load scm breeze
[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"

# Default application
if [ -x "`which vim 2> /dev/null`" ]; then
    export EDITOR='vim'
elif [ -x "`which emacs 2> /dev/null`" ]; then
    export EDITOR='emacs'
fi

if [ -x "`which most 2> /dev/null`" ]; then
    export PAGER=most
elif [ -x "`which less 2> /dev/null`" ]; then
    export PAGER=less
elif [ -x "`which more 2> /dev/null`" ]; then
    export PAGER=more
fi

# Functions
qfind() {
    find . -type f -exec grep -l $1 {} \;
}

# Alias
alias reload='source $HOME/.zshrc'

alias ..='cd ..'
alias ...='cd ../..'
alias cd..='cd ..'
alias cd.='cd ..'

alias ll='ls -larth'
alias la='ls -a'

alias rm='rmtrash'
alias cp='cp -i'
alias mv='mv -i'

alias diff='diff -u'
alias cqt='cat'

alias tarbz2='tar cvjf'
alias untarbz2='tar xvjf'
alias readbz2='tar tjf'

alias j='jobs'
alias v='vim'

alias make='make -j6'

alias a='atom'

alias gp='git push'

alias showHiddenFiles='defaults write com.apple.finder AppleShowAllFiles YES && killall Finder'
alias hideHiddenFiles='defaults write com.apple.finder AppleShowAllFiles NO && killall Finder'
