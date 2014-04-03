# https://github.com/runarmyklebust/bashstuff/blob/master/.bashrc

up() {
	LIMIT=$1

	if [ -z "$LIMIT" ]; then
		LIMIT=1
	fi

	SEARCHPATH=$PWD
	
	# If argument is not numeric, try match path
	if ! [[ "$LIMIT" =~ ^[0-9]+$ ]] ; then
	 	if ! [[ "$SEARCHPATH" =~ ^.*$LIMIT.*$ ]] ; then
			echo "expression not found"
		else
			while [ true ]; do 
				SEARCHPATH=$SEARCHPATH/..
				cd $SEARCHPATH
				if [[ ${PWD##*/} =~ ^.*$LIMIT.*$ ]]; then
					break;
				elif [[ -z ${PWD##*/} ]]; then
					break;
				fi 
			done
		fi
	else 
		# go n directories up
		for ((i=1; i <= LIMIT; i++))
			do
				SEARCHPATH=$SEARCHPATH/..
			done
		cd $SEARCHPATH
	fi
}
