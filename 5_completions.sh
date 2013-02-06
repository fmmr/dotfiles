#!/bin/bash
complete -A alias unalias alias

brew --prefix >/dev/null 2>&1
if [ $? -eq 0 ]; then 
	if [ -f `brew --prefix`/etc/bash_completion ]; then
	  . `brew --prefix`/etc/bash_completion
	fi
fi