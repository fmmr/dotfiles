# backup pictures
export SBDIR="/Users/fmr/spambayes/fmr_db"

export LC_ALL=en_US.utf-8
export LANG=$LC_ALL

export MAVEN_HOME=$HOME/.m2

#export M2_HOME="/usr/local/maven"
#export M2="$M2_HOME/bin"
#export MAVEN_OPTS="-d64 -server -Xmx1200m -Xms256m -Djava.awt.headless=true"

export EDITOR="nano"
export LESSEDIT='mate -l %lm %f'
export FPP_EDITOR="mate"

# Newest-first preference list
JAVA_VERSIONS=(27 26 25 23 22 21 17 15 11 1.8)

# Capture installed JDKs once (keep newlines)
JAVA_HOME_LIST=$(/usr/libexec/java_home -V 2>&1)
for v in "${JAVA_VERSIONS[@]}"; do
  if printf "%s\n" "$JAVA_HOME_LIST" | grep -qE "^[[:space:]]+$v([[:space:]]|\.)"; then
    export JAVA_HOME=$(/usr/libexec/java_home -v "$v")
    break
  fi
done

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

export HISTFILESIZE=-1
export HISTSIZE=1000000
export HISTCONTROL=ignoredups
export GIT_SSL_NO_VERIFY=true

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PROJ_DIR=$HOME/projects
export FINN_DIR=$HOME/finn/ghe
export WORK_DIR="$FINN_DIR $PROJ_DIR"
# Build list of dirs that actually exist
WORK_DIRS=()
for d in "$PROJ_DIR" "$FINN_DIR"; do
  [ -d "$d" ] && WORK_DIRS+=("$d")
done

# Run find safely only if we have any
if [ ${#WORK_DIRS[@]} -gt 0 ]; then
  export PROJECT_DIRS=$(find "${WORK_DIRS[@]}" -type d -name ".git" -maxdepth 2 2>/dev/null \
    | sed -E 's|.*/([^/]+)/\.git|\1|')
else
  export PROJECT_DIRS=""
fi
export NVM_DIR="$HOME/.nvm"

export GROUP=fmr_tester_
export USERNAME=$USER
export PUPPETROOT=/Users/frerodla/finn/tool/puppetroot
export FINN_ENV=prod
export USE_GKE_GCLOUD_AUTH_PLUGIN=True
function pgforward() {
    pgcluster=$1
    shift
    port=$1
    shift
    kubectl port-forward -n postgresql $(kubectl get pods -n postgresql -o custom-columns=:metadata.name --field-selector status.podIP=$(kubectl -n postgresql get endpoints $pgcluster -o go-template='{{ (index (index .subsets 
0).addresses 0).ip }}')) $port:5432
}

# Claude code use vertex
export CLAUDE_CODE_USE_VERTEX=1
export CLOUD_ML_REGION="us-east5"
#export CLOUD_ML_REGION="europe-west-4"
#export ANTHROPIC_VERTEX_PROJECT_ID="ai-unit-441410"
export ANTHROPIC_VERTEX_PROJECT_ID="nmp-pc-fraud-experimentation"
#export ANTHROPIC_MODEL="claude-sonnet-4@20250514"
export AWS_PROFILE=ai-unit-dev

# K8s - prettier diffs for `kubectl diff`
export KUBECTL_EXTERNAL_DIFF="colordiff -u" 2>/dev/null

