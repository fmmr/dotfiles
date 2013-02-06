DOTFILES=$HOME/.dotfiles

ls $DOTFILES/preprocess/* >/dev/null 2>&1
found=$?
if [ $found -eq 0 ]; then
	for f in `ls $DOTFILES/preprocess/*`; do
		source $f
	done
fi


. $DOTFILES/env.sh
. $DOTFILES/completions.sh
. $DOTFILES/bash_prompt.sh
. $DOTFILES/aliases.sh


ls $DOTFILES/priv/* >/dev/null 2>&1
found=$?
if [ $found -eq 0 ]; then
	for f in `ls $DOTFILES/priv/*`; do
		source $f
	done
fi

ls $DOTFILES/misc/* >/dev/null 2>&1
found=$?
if [ $found -eq 0 ]; then
	for f in `ls $DOTFILES/misc/*`;	do
		source $f
	done
fi
