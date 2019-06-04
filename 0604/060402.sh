#!/bin/bash

for f in "$@"
do
	if [ -f "$f" ]; then
		D=$(du "$f" | awk '{print $1}')
		echo "$f : $D"
	else
		echo "$f : 通常のファイルではありません"
	fi
done

