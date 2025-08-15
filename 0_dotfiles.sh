export BASH_SILENCE_DEPRECATION_WARNING=1

DOTFILES=$HOME/.dotfiles
#eval "$(rbenv init -)"
ls $DOTFILES/0_pre/* >/dev/null 2>&1
found=$?
if [ $found -eq 0 ]; then
	for f in `ls $DOTFILES/0_pre/*`; do
		source $f
	done
fi

. $DOTFILES/1_settings.sh
. $DOTFILES/3_env.sh
. $DOTFILES/3_path.sh

# K8s tools (from ~/bin/k8s if available)
[ -f "$HOME/bin/k8s/k8s_prompt.sh" ] && . "$HOME/bin/k8s/k8s_prompt.sh"
[ -f "$HOME/bin/k8s/k8s_completions.sh" ] && . "$HOME/bin/k8s/k8s_completions.sh"
[ -f "$HOME/bin/k8s/k8s_aliases.sh" ] && . "$HOME/bin/k8s/k8s_aliases.sh"

. $DOTFILES/4_prompt_bash.sh
. $DOTFILES/5_completions.sh
. $DOTFILES/6_aliases.sh
. $DOTFILES/9_google.sh
. $DOTFILES/9_history.sh

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
