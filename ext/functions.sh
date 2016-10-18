#!/bin/bash

num='^[0-9]+$'
prob='^[1,2,7,13]$'

function rb_or_js {
	printf "\nRuby (1) or JS (2)? [ENTER]:\n"
	read lang
	if [ $lang == 1 ] || [[ $lang =~ ('ruby'|'r') ]]; then
		ruby_pup
	elif [ $lang == 2 ] || [[ $lang =~ ('js'|'j'|'javascript') ]]; then
		js_pup
	fi
}


function ruby_pup {
	if [ -f ruby/pup_euler${problem}.rb ]; then
		echo ""
		ruby ruby/pup_euler${problem}.rb
		see_code
		if [[ $yn == y || $yn == "yes" ]] ; then
			cat ruby/pup_euler${problem}.rb
		else
			printf "\nwoof woof woof!\n"
		fi
	else
		printf "\nAnswer not available in Ruby yet.\n"
	fi
}

function js_pup {
	if [ -f js/pupEuler${problem}.js ]; then
		echo ""
		node js/pupEuler${problem}.js
		see_code
		if [[ $yn == y || $yn == "yes" || $yn == "1" ]] ; then
			cat js/pupEuler${problem}.js
		else
			printf "\nwoof woof woof!\n"
		fi
	else
		printf "\nAnswer not available in JavaScript yet.\n"
	fi
}

function see_code {
	printf "\nWould you like to see the code? (y/n) [ENTER]:\n"
	read yn
	echo ""
}
