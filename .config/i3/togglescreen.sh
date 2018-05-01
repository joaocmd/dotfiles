#!/bin/bash

LIGHT=$(light)
echo $LIGHT

if [[ $LIGHT = 0.00 ]]; then
	light -I
else
	light -O
	light -S 0.00
fi
