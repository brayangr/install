#!/bin/bash

SCRIPTS="Set personal git account\nSet work git account"

selection=$(echo -e $SCRIPTS | wofi -d --prompt "Select Script" -i)
echo $selection

case $selection in
	"Set personal git account")
		$HOME/.scripts/change_git_account.sh personal
		;;
	"Set work git account")
		$HOME/.scripts/change_git_account.sh work
		;;
esac
