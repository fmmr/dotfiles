# for colours used see: 2_pre/colours.sh

# tip: if [ -z "$SSH_CLIENT" ]; then
# https://wiki.archlinux.org/index.php/Color_Bash_Prompt
# http://maketecheasier.com/8-useful-and-interesting-bash-prompts/2009/09/04

function git_prompt() {
  if git status 2>&1| grep -q "^# On branch"
  then
	REV=`git log --pretty=format:'%h' | head -1`
     BRANCH=`git branch 2>&1 | grep ^*|awk '{print $2}'`
     DIRTY=`git status 2>&1 | grep -E "Changes not staged for commit|Changes to be committed|nothing added to commit but" > /dev/null && echo "*"`
     [[ $DIRTY ]] && COLOR="$FRED" || COLOR="$RS"
     echo "$FWHT"g"$RS:$COLOR$BRANCH, $REV$DIRTY$RS"
  fi
}

# function num_files_prompt(){
# 	NUM_FILES=`ls | wc -l | tr -d ' '` 
# 	echo "$FWHT"f"$RS:$NUM_FILES"
# }

function where_prompt(){
	dir=`pwd`
	w=`whoami`
	if [ $dir = $HOME ]; then
		echo "$HC$FBLE~$RS"
	elif [[ $dir =~ "$w/finn/search" ]]; then
		echo "$HC$FGRN"s"$RS"
	elif [[ $dir = "/Users/$w/finn" ]]; then
		echo "$HC$FGRN"f"$RS"
	elif [[ $dir =~ "$w/finn" ]]; then
		echo "$FGRN"f"$RS"
	elif [[ $dir =~ "$w/bin" ]]; then
		echo "$HC$FGRN"b"$RS"
	elif [[ ! $dir =~ "$w" ]]; then
		echo "$FRED"s"$RS"
	fi
}

function root_prompt(){
	if [ $(id -u) -eq 0 ]; then # you are root, set red colour prompt
		echo "$FRED""ROOT! ""$RS"
	fi
}

function path_prompt(){
	MAX=48
	PRE=25
	POST=20
	my_path=`pwd`
	my_path=${my_path/$HOME/"~"}
	LENGTH=${#my_path}
	let "LASTIDX=$LENGTH-$POST" 
	if [ $LENGTH -ge $MAX ]; then
	   my_path=${my_path:0:$PRE}"..."${my_path:$LASTIDX}	
	fi
	echo "$HC$FBLE$my_path$RS"
}
COMP=$(scutil --get ComputerName)

function version_prompt(){
	ls | egrep "\.$2" >/dev/null 2>&1
	if [ $? -eq 0 ]; then
		if [ -z "$6" ]; then
			version=`$3  2>&1 | awk -v num=$5 -v v=$4 '/v/ {print $num}'`
		else
			version=`$3  2>&1 | awk -v num=$5 -v v=$4 '/v/ {print $num}'  | egrep -o "$6"`
		fi
		echo "$FWHT"$1"$RS:"$version"$RS"; 
	fi
}

bash_prompt() {
		NUMFILESPROMPT=""
		GITPROMPT=$(git_prompt)
		RUBYPROMPT=$(version_prompt r "rb|\.feature" "ruby -v" ruby 2)
		JAVAPROMPT=$(version_prompt j "java|pom.xml" "java -version" version 3 "[0-9]+\.[0-9]+")
		SCALAPROMPT=$(version_prompt s scala "scala -version" version 5)
		RT=$(root_prompt)
		WHEREPROMPT=$(where_prompt)
		PATHPROMPT=$(path_prompt)
		WHOPROMPT="$FWHT"w"$RS:\\\u"
		#compensate=3
    	#PS1=$(printf "%*s\r%s\$ " "$(($(tput cols)+${compensate}))" "$RIGHT" "$LEFT")
		RIGHT=`echo -e "$RT$FGRY[\A]$RS" $HOST_PROMPT_COLOR${COMP}$RS $NUMFILESPROMPT $WHOPROMPT $JAVAPROMPT $SCALAPROMPT $RUBYPROMPT $GITPROMPT $PATHPROMPT`
		if [ "z$PROMPT_TWO_LINES" = "z1" ]; then
			RIGHT="╭  $RIGHT"
			LEFT=`echo -e "\n╰  $RT"`
		else
			LEFT=""
		fi
		PS1="$RIGHT$LEFT\$$WHEREPROMPT "
}
PROMPT_COMMAND=bash_prompt
