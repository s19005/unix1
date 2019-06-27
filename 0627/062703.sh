#!/bin/bash

usags()
{
    local sclipt_name=$(basename "$0")
    cat << END
使い方: $sclipt_name DIRPATH
DIRPATHで指定したディレクトリ下のファイル数/ディレクトリ数を表示
DIRPATH - ファイル数/ディレクトリ数を表示するディレクトリパスを指定
END
}

if [ "$#" -eq 0 ]; then
    usags
    exit 1
fi

if [ -d "$1" ]; then
    f=$(find $1 -type f 2> /dev/null | wc -l)
    d=$(find $1 -type d 2> /dev/null | wc -l)
    echo "file => $f"
    echo "directory => $d"
else
    echo "${1}: ディレクトリではありません"
fi
