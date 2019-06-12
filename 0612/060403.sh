#!/bin/bash

usags()
{
    #シェルスクリプトのファイル名を取得
    local script_name=$(basename "$0")
    cat << END
使い方: $script_name DIRPATH...
DIRPATHで指定したディレクトリ下の実行可能ファイルの一覧表示
DIRPATH-実行可能ファイルの一覧表示を行うディレクトリパスを指定
END
}

if [ "$#" -eq 0 ]; then
    usags
    exit 1
fi

if [ -d "$1" ]; then
        for file in $(find "$1" -maxdepth 1 -type f)
        do
		if [ -x "$file" ]; then
			echo $(basename "$file")
		fi
        done
else
        echo "$1 : ディレクトリではありません"
fi

