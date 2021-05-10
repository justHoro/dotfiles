#!/bin/sh

# A small script to configure a wacom tablet

readonly DEVICE_ID=$(echo ${1:="19"})
readonly OUTPUT=$(echo ${2:="HEAD-1"})
readonly DEF_AREA="0 0 15200 9500"

RES_X=16
RES_Y=9
KEEP_RATIO=1
SCALE_FACTOR=33

calc_mod_area() {
	local tmp="$1"

	local x=$(echo $DEF_AREA | cut -d ' ' -f3)
	local y=$(echo $DEF_AREA | cut -d ' ' -f4)
	local mod_x="$(echo "$x * .$tmp" | bc)"
	local mod_y="$(echo "$y * .$tmp" | bc)"

	echo "0 0 ${mod_x%.00} ${mod_y%.00}"
}

run() {
	xsetwacom set $DEVICE_ID Area "$MOD_AREA"
	xsetwacom set $DEVICE_ID MapToOutput "$OUTPUT"
	xsetwacom set $DEVICE_ID Button 1 15
	xsetwacom set $DEVICE_ID Button 2 15
	xsetwacom set $DEVICE_ID Button 3 15
}

reset()
{
	
	xsetwacom set $DEVICE_ID Area "$DEF_AREA"
	xsetwacom set $DEVICE_ID MapToOutput "$OUTPUT"
	xsetwacom set $DEVICE_ID Button 1 1
	xsetwacom set $DEVICE_ID Button 2 2
	xsetwacom set $DEVICE_ID Button 3 3
}


MOD_AREA="$(calc_mod_area $SCALE_FACTOR)"

echo "Area: $MOD_AREA | Device: $DEVICE_ID | Output: $OUTPUT" 

reset
run

