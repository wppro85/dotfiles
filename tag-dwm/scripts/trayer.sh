#!/bin/bash
killall trayer
if [ $? != 0 ];then
	trayer --edge top --widthtype pixel --height 20 --transparent true --tint 100
fi
