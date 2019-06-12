#!/bin/bash

usags()
{
    #シェルスクリプトのファイル名を取得
    local script_name=$(basename "$0")
    cat << END
使い方: $script_name FILEPATH...
FILEPATHで指定したファイルの容量を表示
FILEPATH-容量を求めるファイルのパスを指定、複数指定可
END
}

if [ "$#" -eq 0 ]; then
    usags
    exit 1
fi

for f in "$@"
do
	if [ -f "$f" ]; then
		D=$(du "$f" | awk '{print $1}')
		echo "$f : $D"
	else
		echo "$f : 通常のファイルではありません"
	fi
done
