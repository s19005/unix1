#!/bin/bash

if [ -f "$1" ]; then
	D=$(du "$1" | awk '{print $1}')
	echo "$1 : $D"
else
	echo "$1 : 通常のファイルではありません"
fi

