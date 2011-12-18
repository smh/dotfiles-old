# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx ruby node npm rails3 rvm github git-flow autojump brew)

export EDITOR=vim
source $ZSH/oh-my-zsh.sh

# Customize to your needs...

[[ -s "/Users/smh/.rvm/scripts/rvm" ]] && source "/Users/smh/.rvm/scripts/rvm"  # This loads RVM into a shell session.

export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/share/npm/bin:/opt/local/bin:/opt/subversion/bin:/opt/local/sbin:/Users/smh/Tools/maven/bin:/Library/PostgreSQL8/bin:/Users/smh/cl/bin:/Users/smh/.rvm/bin:/Users/smh/.cabal/bin
export LANG=en_US.UTF-8

__rvm_project_rvmrc
. ~/.nvm/nvm.sh
