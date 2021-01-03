#!/bin/bash

OIFS="$IFS"
IFS=$'\n'
list=$(find . -type f | shuf)
numleft=$(echo "$list" | wc -l)
for file in $list ; do
	ending=$(echo "$file" | sed 's/\(.*\)\.\(.*\)$/\2/')
	
	#include this block if you want to have 5% recovery data
	if [ ! -e "$file-5.par2" -a $ending != "par2" -a $ending != "sig" -a "$(stat --format=%s $file)" != 0 ]; then
		echo "$numleft original files left"
		par2create -q -n1 -r5 "$file"
		rm "$file".par2
		mv "$file".vol*par2 "$file"-5.par2
	fi
	
	numleft=$((numleft-1))
done
IFS="$OIFS"
