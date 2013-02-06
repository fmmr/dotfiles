DOTFILES=$HOME/.dotfiles

source $DOTFILES/1_settings.sh

ls $DOTFILES/2_pre/* >/dev/null 2>&1
found=$?
if [ $found -eq 0 ]; then
	for f in `ls $DOTFILES/2_pre/*`; do
		source $f
	done
fi

. $DOTFILES/3_env.sh
. $DOTFILES/3_path.sh
. $DOTFILES/4_prompt_bash.sh
. $DOTFILES/5_completions.sh
. $DOTFILES/6_aliases.sh

ls $DOTFILES/7_priv/* >/dev/null 2>&1
found=$?
if [ $found -eq 0 ]; then
	for f in `ls $DOTFILES/7_priv/*`; do
		source $f
	done
fi

ls $DOTFILES/9_misc/* >/dev/null 2>&1
found=$?
if [ $found -eq 0 ]; then
	for f in `ls $DOTFILES/9_misc/*`;	do
		source $f
	done
fi
