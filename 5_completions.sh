#!/bin/bash
complete -A alias unalias alias

brew --prefix >/dev/null 2>&1
if [ $? -eq 0 ]; then 
	if [ -f `brew --repository`/Library/Contributions/brew_bash_completion.sh ]; then
		source `brew --repository`/Library/Contributions/brew_bash_completion.sh
	fi
fi

# Function to quick cd to git repositories, uses _set_gitrepository-TC
cg() {
	D=`find $WORK_DIR -type d -name "*.git" -maxdepth 3 | grep $1 |head -1`"/.."
	builtin cd $D
}

_set_gitrepository() {
	local cur
	cur=${COMP_WORDS[COMP_CWORD]}
	COMPREPLY=( $( compgen -W '$( find $WORK_DIR -type d -name "*.git" -maxdepth 3 | sed -e "s/.*\/\(.*\)\/.git/\1/" )' $cur ))
}

complete -F _set_gitrepository cg



# Function to checkout branches, uses _set_listbranches-TC
branch() {
    git checkout $1
}

# Get branches and remove * to not fuck up TabCompletion
getBranches() {
	BRANCHES=$(git branch | sed 's/*//')
	echo $BRANCHES
}

_set_listbranches() {
	local cur
	cur=${COMP_WORDS[COMP_CWORD]}
	COMPREPLY=( $( compgen -W '$( getBranches)' $cur ))
}

complete -F _set_listbranches branch