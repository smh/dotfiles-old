# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
export ZSH_THEME="blinks"
export ZSH_THEME="juanghurtado"


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

zstyle :omz:plugins:ssh-agent agent-forwarding on

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
if [[ `uname` == "Darwin" ]]; then
  plugins=(git osx ruby node npm rails rake rbenv github git-flow autojump brew taskwarrior lol)
else
  plugins=(git ssh-agent ruby node npm rails rake rvm github git-flow autojump brew taskwarrior command-not-found lol)
fi

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export EDITOR=vim

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
#[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh"  # This loads NVM into a shell session.

export MAVEN_OPTS="-Xms512m -Xmx1024m -XX:PermSize=256m -XX:MaxPermSize=512m"
export PATH=$HOME/bin:$HOME/.cabal/bin:$HOME/Tools/maven/bin:/usr/local/bin:/usr/local/share/python:$PATH
export LANG=en_US.UTF-8

# corrections are usually wrong!
unsetopt correct_all

alias tmux="TERM=screen-256color-bce tmux"
export SBT_OPTS="-XX:MaxPermSize=256m"
#. ~/nvm/nvm.sh

[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

if [[ `uname` == "Darwin" ]]; then
  # cat `brew --prefix`/etc/grc.bashrc
  source "`brew --prefix`/etc/grc.bashrc"
else
fi

GRC=`which grc`
if [ "$TERM" != dumb ] && [ -n GRC ]
then
    alias colourify="$GRC -es --colour=auto"
    alias configure='colourify ./configure'
    alias diff='colourify diff'
    alias make='colourify make'
    alias gcc='colourify gcc'
    alias g++='colourify g++'
    alias as='colourify as'
    alias gas='colourify gas'
    alias ld='colourify ld'
    alias netstat='colourify netstat'
    alias ping='colourify ping'
    alias traceroute='colourify /usr/sbin/traceroute'
fi

if [ -x /usr/libexex/java_home ]; then
  export JAVA_HOME=`/usr/libexec/java_home`
fi

eval "$(direnv hook zsh)"
