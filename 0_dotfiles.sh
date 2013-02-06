DOTFILES=$HOME/.dotfiles

source $DOTFILES/1_settings.sh

ls $DOTFILES/0_pre/* >/dev/null 2>&1
found=$?
if [ $found -eq 0 ]; then
	for f in `ls $DOTFILES/0_pre/*`; do
		source $f
	done
fi

. $DOTFILES/env.sh
. $DOTFILES/completions.sh
. $DOTFILES/prompt_bash.sh
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
