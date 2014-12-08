# backup pictures
export SBDIR="/Users/fmr/spambayes/fmr_db"

export LC_ALL=en_US.utf-8
export LANG=$LC_ALL

export MAVEN_HOME=$HOME/.m2

#export M2_HOME="/usr/local/maven"
#export M2="$M2_HOME/bin"
#export MAVEN_OPTS="-d64 -server -Xmx1200m -Xms256m -Djava.awt.headless=true"

export EDITOR="nano"


/usr/libexec/java_home -v 1.8 > /dev/null  2>&1
if [ $? -eq 0 ]; then
	export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
else
	/usr/libexec/java_home -v 1.7 > /dev/null  2>&1
	if [ $? -eq 0 ]; then
		export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
	else
		export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)
	fi
fi



export IDEA_JDK=$JAVA_HOME

export HADOOP_HOME=/usr/local/hadoop
export ACTIVEMQ_HOME=/usr/local/activemq
export SCALA_HOME=/usr/local/scala

export MAVEN_OPTS="-Xms256m -Xmx2048m"
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

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#export DYLD_LIBRARY_PATH=/usr/local/libimobiledevice-macosx

eval $(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)

export PROJ_DIR=$HOME/projects
export WORK_DIR=$HOME/finn
