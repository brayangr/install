#!/bin/bash

SCRIPTS="Set personal git account\nSet work git account\nSilence Notifications\nBackup gnome dconf\nRestore gnome dconf"

selection=$(echo -e $SCRIPTS | wofi -d --prompt "Select Script" -i)
echo $selection

case $selection in
	"Set personal git account")
		$HOME/.scripts/change_git_account.sh personal
		;;
	"Set work git account")
		$HOME/.scripts/change_git_account.sh work
		;;
	"Backup gnome dconf")
		$HOME/.scripts/backup_gnome_settings.sh
		;;
	"Restore gnome dconf")
		$HOME/.scripts/restore_gnome_settings.sh
		;;
esac
