# backup pictures
IPHOTO=/Users/fmr/Pictures/iPhoto\ Library/
DROBO=/Volumes/DROBO/IPHOTO/iPhoto\ Library/
export SBDIR="/Users/fmr/spambayes/fmr_db"

export LC_ALL=en_US.utf-8
export LANG=$LC_ALL

export NS_HOSTS="test-01 test-02 staging-01 staging-02"
export PROD="prod-01 prod-03 prod-06 prod-07 prod-08 prod-09"
export OAX_HOSTS="oax01 oax02 search solr-01 storex-01 storex-02 "
export OAX_HOSTS="ks-01 $OAX_HOSTS"
export HA_HOSTS="adserver-test04 adserver-test04-02"
export AWS_HOSTS="$OAX_HOSTS $NS_HOSTS $PROD $HA_HOSTS"

export MAVEN_HOME=$HOME/.m2
export M2_HOME="/usr/share/maven"
export M2="$M2_HOME/bin"
export MAVEN_OPTS="-d64 -server -Xmx1200m -Xms256m -Djava.awt.headless=true"

export EDITOR="nano"
export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
export HADOOP_HOME=/usr/local/hadoop
export ACTIVEMQ_HOME=/usr/local/activemq
export SCALA_HOME=/usr/local/scala

export MAVEN_OPTS="-Xms256m -Xmx2048m -XX:PermSize=256m -XX:MaxPermSize=512m"
export CATALINA_HOME="/usr/local/tomcat"

# for sybase to work
export	SYBASE=/Applications/Sybase/System
export	SYBASE_ASE=ASE-12_5
export	SYBASE_OCS=OCS-12_5
export	DSQUERY=SYBASE
#export  DYLD_LIBRARY_PATH=$SYBASE/$SYBASE_OCS/lib:$DYLD_LIBRARY_PATH


export HISTFILESIZE=10000
export HISTSIZE=2000

export GIT_SSL_NO_VERIFY=true

export PATH=$PATH:$HADOOP_HOME/bin
export PATH=$PATH:$SCALA_HOME/bin
export PATH=$PATH:$M2:$JAVA_HOME/bin
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:$PATH
export PATH=$PATH:/usr/local/play

#export	PATH=/Applications/Sybase/System/OCS-12_5/bin:/Applications/Sybase/System/ASE-12_5/bin:$PATH
#export PATH=$PATH:$HOME/.rvm/bin
#export PATH=$PATH:/usr/local/jasypt/bin
#export PATH=$PATH:/usr/local/activemq/bin
#export PATH=$PATH:/usr/local/mongodb/bin
#export PATH=$PATH:/usr/local/node/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
