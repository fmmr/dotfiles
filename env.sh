# backup pictures
export SBDIR="/Users/fmr/spambayes/fmr_db"

export LC_ALL=en_US.utf-8
export LANG=$LC_ALL

export MAVEN_HOME=$HOME/.m2
export M2_HOME="/usr/share/maven"
export M2="$M2_HOME/bin"
export MAVEN_OPTS="-d64 -server -Xmx1200m -Xms256m -Djava.awt.headless=true"

export EDITOR="nano"


/usr/libexec/java_home -v 1.7 > /dev/null  2>&1
if [ $? -eq 0 ]; then
	export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
else
	export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)
fi

export HADOOP_HOME=/usr/local/hadoop
export ACTIVEMQ_HOME=/usr/local/activemq
export SCALA_HOME=/usr/local/scala

export MAVEN_OPTS="-Xms256m -Xmx2048m -XX:PermSize=256m -XX:MaxPermSize=512m"
export CATALINA_HOME=/usr/local/tomcat
export PLAY_HOME=/usr/local/play

# for sybase to work
export	SYBASE=/Applications/Sybase/System
export	SYBASE_ASE=ASE-12_5
export	SYBASE_OCS=OCS-12_5
export	DSQUERY=SYBASE

export HISTFILESIZE=10000
export HISTSIZE=2000

export GIT_SSL_NO_VERIFY=true

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:$PATH
export PATH=$PATH:$HADOOP_HOME/bin
export PATH=$PATH:$SCALA_HOME/bin
export PATH=$PATH:$M2:$JAVA_HOME/bin
export PATH=$PATH:$PLAY_HOME

#export	PATH=/Applications/Sybase/System/OCS-12_5/bin:/Applications/Sybase/System/ASE-12_5/bin:$PATH
#export PATH=$PATH:$HOME/.rvm/bin
#export PATH=$PATH:/usr/local/jasypt/bin
#export PATH=$PATH:/usr/local/activemq/bin
#export PATH=$PATH:/usr/local/mongodb/bin
#export PATH=$PATH:/usr/local/node/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
