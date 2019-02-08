#!/bin/bash

# imagemagick
# i3lock
# scrot (optional but default)

IMAGE=/tmp/i3lock.png
IMAGE2=/tmp/i3lock2.png
SCREENSHOT="scrot $IMAGE" 

$SCREENSHOT
$HOME/Codes/videoglitch -n 10 -j 10 -c green-magenta $IMAGE $IMAGE2
i=0
while [[ i -lt 20 ]] 
do
	timeout 0.1 feh -F $IMAGE

	timeout 0.$(( ( RANDOM % 5 )  + 1 )) feh -F $IMAGE2
	let i=i+1;
done
i3lock -i $IMAGE2
