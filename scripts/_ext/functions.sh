#!/bin/sh

shopt -s nocasematch
source scripts/_ext/colors.sh

# $1 - name of the binary executable
# $2 - suggestion link
# $3 - executable homepage
function prereq_error {
	printf "
${IRed}[Error]${Color_Off} ${1} is not installed or is not in your executable path.
Please install ruby and try again. 
Suggestion: ${ICyan}${2}${Color_Off}
Homepage: ${3}

" >&2
}

# $1 = problem type
# $2 = "hint" if there should be extra hint text
function enter_prompt {
	printf "\n${ICyan}Please pick a $1 and press [ENTER or ^c to quit]: ${Color_Off}\n"
	if [[ $2 -eq "hint" ]]; then
		printf "(You can find the $1s in the $1 files for available numbers)\n"
	fi
}

function rb_or_js {
	enter_prompt "programming language"

	printf "\n${IRed}1: ruby${Color_Off}"
	printf "\n${IYellow}2: js${Color_Off}"

	echo
	read lang
	if [ $lang == 1 ] || [[ $lang =~ ('ruby'|'r') ]]; then
		ruby_pup
	elif [ $lang == 2 ] || [[ $lang =~ ('js'|'j'|'javascript') ]]; then
		js_pup
	fi
}

function ruby_pup {
	enter_prompt "ruby problem number" "hint"
	read problem

	if [ -f ruby/pup_euler$problem.rb ]; then
		echo ""
		ruby ruby/pup_euler$problem.rb
		see_code
		if [[ $yn == y || $yn == "yes" ]]; then
			cat ruby/pup_euler$problem.rb
		else
			printf "\nwoof woof woof!\n"
		fi
	else
		printf "\nAnswer not available in ruby yet.\n"
	fi
}

function js_pup {
	enter_prompt "js problem number" "hint"
	read problem

	if [ -f js/pupEuler${problem}.js ]; then
		echo ""
		node js/pupEuler${problem}.js
		see_code
		if [[ $yn == y || $yn == "yes" || $yn == "1" ]]; then
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
