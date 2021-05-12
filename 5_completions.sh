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
	COMPREPLY=( $( compgen -W '$PROJECT_DIRS' $cur ))
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



# made with make-completion-wrapper:
#function make-completion-wrapper () {
#  local function_name="$2"
#  local arg_count=$(($#-3))
#  local comp_function_name="$1"
#  shift 2
#  local function="
#    function $function_name {
#      ((COMP_CWORD+=$arg_count))
#      COMP_WORDS=( "$@" \${COMP_WORDS[@]:1} )
#      "$comp_function_name"
#      return 0
#    }"
#  eval "$function"
#  echo $function_name
#  echo "$function"
#}
# make-completion-wrapper __start_kubectl _kubectl_for_k kubectl
function _kubectl_for_k {
  ((COMP_CWORD+=0))
  COMP_WORDS=( kubectl ${COMP_WORDS[@]:1} )
  __start_kubectl
  return 0
}
complete -F _kubectl_for_k k ks

complete -F _set_listbranches branch



# The next line enables shell command completion for gcloud.
if [ -f /usr/local/google-cloud-sdk/completion.bash.inc ]; then
  source '/usr/local/google-cloud-sdk/completion.bash.inc'
fi
eval "$(kubectl completion bash)"


source <(kaf completion bash)
