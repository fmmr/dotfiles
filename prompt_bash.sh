
function git_prompt() {
  if git status 2>&1| grep -q "^# On branch"
  then
	REV=`git log --pretty=format:'%h' | head -1`
     BRANCH=`git branch 2>&1 | grep ^*|awk '{print $2}'`
     DIRTY=`git status 2>&1 | grep -E "Changes not staged for commit|Changes to be committed|nothing added to commit but" > /dev/null && echo "*"`
     [[ $DIRTY ]] && COLOR="$FRED" || COLOR="$RS"
     GITPROMPT=`echo -e "$FWHT"g"$RS:$COLOR$BRANCH, $REV$DIRTY$RS"`
  else
     GITPROMPT=""
  fi
}

function ruby_prompt(){
	ls *.rb >/dev/null 2>&1
	rub=$?

	ls *.feature >/dev/null 2>&1

	if [ $? -eq 0 -o $rub -eq 0 ]
	then
		RUBY_VERSION=`ruby -v | awk {'print $2'}`
		RUBYPROMPT=`echo -e "$FWHT"r"$RS:$RUBY_VERSION$RS"`
	else
     	RUBYPROMPT=""
	fi
}

function scala_prompt(){
	ls *.scala >/dev/null 2>&1
	rub=$?

	if [ $rub -eq 0 ]; then
		SCALA_VERSION=`scala -version | awk {'print $5'}`
		SCALAPROMPT="$FWHT"s"$RS:$SCALA_VERSION$RS"
	else
     	SCALAPROMPT=""
	fi
}


function java_prompt(){
	ls *.java >/dev/null 2>&1
	j=$?

	ls pom.xml >/dev/null 2>&1

	if [ $? -eq 0 -o $j -eq 0 ]
	then
		JAVA_VERSION=`java -version 2>&1 | awk "/version/ {print $3}" | egrep -o "[0-9]+\.[0-9]+"` 
		JAVAPROMPT="$FWHT"j"$RS:$JAVA_VERSION"
	else
		JAVAPROMPT=""
	fi
	
	
}

function num_files_prompt(){
	NUM_FILES=`ls | wc -l | tr -d ' '` 
	NUMFILESPROMPT="$FWHT"f"$RS:$NUM_FILES"
}

function where_prompt(){
	PWD=`pwd`
	if [ $PWD = $HOME ]; then
		WHEREPROMPT="$HC$FBLE~$RS"
	elif [[ $PWD =~ "frerodla/finn/search" ]]; then
		WHEREPROMPT="$HC$FGRN"s"$RS"
	elif [[ $PWD = "/Users/frerodla/finn" ]]; then
		WHEREPROMPT="$HC$FGRN"f"$RS"
	elif [[ $PWD =~ "frerodla/finn" ]]; then
		WHEREPROMPT="$FGRN"f"$RS"
	elif [[ $PWD =~ "frerodla/bin" ]]; then
		WHEREPROMPT="$HC$FGRN"b"$RS"
	elif [[ ! $PWD =~ "frerodla" ]]; then
		WHEREPROMPT="$FRED"s"$RS"
	else
		WHEREPROMPT=""
	fi
}

function root_prompt(){
	if [ $(id -u) -eq 0 ]; then # you are root, set red colour prompt
		RT=`echo -e "$FRED""ROOT! ""$RS"`
	else
		RT=""
	fi
}

function path_prompt(){
	MAX=48
	PRE=25
	POST=20
	PWD=`pwd`
	PWD=${PWD/$HOME/"~"}
	LENGTH=${#PWD}
	let "LASTIDX=$LENGTH-$POST" 
	if [ $LENGTH -ge $MAX ]; then
	   PWD=${PWD:0:$PRE}"..."${PWD:$LASTIDX}	
	fi
	PATHPROMPT="$HC$FBLE$PWD$RS"
}
COMP=$(scutil --get ComputerName)

bash_prompt() {
		git_prompt
		ruby_prompt
		java_prompt
		root_prompt
		num_files_prompt
		where_prompt
		path_prompt
		scala_prompt

		WHOPROMPT="$FWHT"w"$RS:\\\u"
		
		#compensate=3
    	#PS1=$(printf "%*s\r%s\$ " "$(($(tput cols)+${compensate}))" "$RIGHT" "$LEFT")
		RIGHT=`echo -e "$RT$FGRY[\A]$RS" $FMAG${COMP}$RS $NUMFILESPROMPT $WHOPROMPT $JAVAPROMPT $SCALAPROMPT $RUBYPROMPT $GITPROMPT $PATHPROMPT`
		if [ "z$PROMPT_TWO_LINES" = "z1" ]; then
			RIGHT="╭  $RIGHT"
			LEFT=`echo -e "\n╰ $RT "`
		else
			LEFT=""
		fi
		PS1="$RIGHT$LEFT\$$WHEREPROMPT "
}
PROMPT_COMMAND=bash_prompt
