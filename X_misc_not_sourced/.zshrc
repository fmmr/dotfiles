# source ~/.bashrc

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export TOOLSHOME=$HOME/tools
export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LANG="en_US.UTF-8"
export GRADLE_OPTS="-Dorg.gradle.daemon=true"
export SCRIPTS_DIR=$HOME/.scripts
# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="fmr"
export EDITOR='mate -w'
export JSTESTDRIVER_HOME=/Users/chrkolst/tools/jstestdriver
export JRUBY_OPTS="--1.9"
export BAMBOOUSER=chrkolst
export BAMBOOPASS=eDAvWR3D
export MAVEN_OPTS="-Xmx1536m -XX:MaxPermSize=384m"
# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

alias j6='export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)'
alias j7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git mac ruby rails3 svn brew ssh-agent github bundler git-flow grails gradle autojump git-hubflow themes)

# alias rvm-prompt=$HOME/.rvm/bin/rvm-prompt
source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/sbin:/bin:/usr/local/share/npm/bin
if [ -s "$HOME/bin" ]; then
    export PATH=$PATH:$HOME/bin
fi
if [ -s "$SCRIPTS_DIR" ]; then
  export PATH=$PATH:$SCRIPTS_DIR
fi
  
alias emacs="/usr/local/Cellar/emacs/24.2/Emacs.app/Contents/MacOS/Emacs"
alias uat="ssh finn@uat.finn.no"
alias iadbuild="cd ~/src/finn/git/iad && git sup && mvn -Pfinn clean install -U -T1C"
export PATH=$PATH:/usr/local/share/python
alias buildfinnamd="cd ~/src/finn/git/iad/minfinn/src/main/webapp/clientscript/finn/amd && node r.js -o build.js"

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" #This loads RVM into shell session

export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
source ~/.aliases

