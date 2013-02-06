#/bin/bash

DOTFILES=$HOME/.dotfiles
MISC=$DOTFILES/X_misc_not_sourced

for dir in $DOTFILES/X_misc_not_sourced; do 
	cd $dir
	for i in `find . -type f | grep -v do_not_remove | awk -F / {'print $2'}` ; do
		cd $HOME
		rm -f $i
		echo linking $dir/$i
		ln -s $dir/$i > /dev/null 2>&1
		cd - > /dev/null
	done
done
