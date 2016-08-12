#!/bin/bash

terminals="$(~/.stylin/countTerminals.sh gnome-terminal)"
terminals=$((terminals%4))

case $terminals in
	0)
		~/.dynamic-colors/bin/dynamic-colors switch solarized-dark
		;;
	1)
		~/.dynamic-colors/bin/dynamic-colors switch solarized-dark-desaturated
		;;
	2)
		~/.dynamic-colors/bin/dynamic-colors switch solarized-light
		;;
	3)
		~/.dynamic-colors/bin/dynamic-colors switch solarized-light-desaturated
		;;
	*)
		exit 1
esac
