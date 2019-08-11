#!/bin/sh
i=0
while [ $i -le 9 ];
do
	/usr/bin/sleep .1
	brightnessctl s 1%-
	i=$((i + 1))
done
