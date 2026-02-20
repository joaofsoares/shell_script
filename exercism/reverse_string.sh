#!/bin/ksh

main() {
	STR=$1
	# for ((i = 0; i < ${#STR}; i++)); do
	for ((i = ${#STR} - 1; i >= 0; i--)); do
		NEW_STR="${NEW_STR}${STR:$i:1}"
	done

	echo "$NEW_STR"
}

RESULT=$(main "$1")
echo "$RESULT"
