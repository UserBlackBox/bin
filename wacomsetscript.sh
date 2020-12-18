#!/bin/bash
ids=()
for i in $(xsetwacom list devices)
do
	if [[ $i == ?(-)+([0-9]) ]] ; then
		ids+=($i)
	fi
done

for i in $ids
do
	xsetwacom --set "$i" MapToOutput eDP-1
done
