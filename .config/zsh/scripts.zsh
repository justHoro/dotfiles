#!/bin/sh

# FUNCTION DEFINITIONS

# desc: Generate a styled comment
# exmp: comgen "This is a comment" "#"
# arg[str]: The comment
# arg[str]: A string/char top use as an uncomment character
comgen() {
	local chars=( "─" "│" "┌" "┐" "└" "┘" )

	local tmp="$1"
	local len=$(echo -n "$tmp" | wc -m)

	printf "$2 $chars[3]"; printf "$chars[1]%.0s" {1..$len}; printf "$chars[4]\n"
	printf "$2 $chars[2]$tmp$chars[2]\n"
	printf "$2 $chars[5]"; printf "$chars[1]%.0s" {1..$len}; printf "$chars[6]\n"
}

# Change working dir in shell to last dir in lf on exit
# Taken and modifyed from: https://raw.githubusercontent.com/gokcehan/lf/master/etc/lfcd.sh
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp" >/dev/null
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}

# BINDINGS
bindkey -s '^y' 'lfcd\n'	# Cd using lf

