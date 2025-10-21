#!/bin/bash
complete -A alias unalias alias

brew --prefix >/dev/null 2>&1
if [ $? -eq 0 ]; then 
	if [ -f `brew --repository`/Library/Contributions/brew_bash_completion.sh ]; then
		source `brew --repository`/Library/Contributions/brew_bash_completion.sh
	fi
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# Function to quick cd to git repositories, uses _set_gitrepository-TC
cg() {
	for dir in $WORK_DIR; do
		if [ -d "$dir/$1" ]; then
			builtin cd "$dir/$1"
			break
		fi
	done
}

_set_gitrepository() {
    local cur
    cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "${PROJECT_DIRS}" -- "$cur") )
}
complete -F _set_gitrepository cg


_set_search_pods() {
	local cur
	cur=${COMP_WORDS[COMP_CWORD]}
	COMPREPLY=( $( compgen -W '$( cat ~/.dotfiles/X_priv_not_sourced/search_pods )' $cur ))
}


complete -F _set_search_pods m
complete -F _set_search_pods kt


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

# The next line enables shell command completion for gcloud.
if [ -f /usr/local/google-cloud-sdk/completion.bash.inc ]; then
  source '/usr/local/google-cloud-sdk/completion.bash.inc'
fi

# kubectl completion moved to k8s_completions.sh for better performance

FINN_AC_BASH_SETUP_PATH=/Users/fmr/Library/Caches/finn/autocomplete/bash_setup && test -f $FINN_AC_BASH_SETUP_PATH && source $FINN_AC_BASH_SETUP_PATH; # finn autocomplete setup

