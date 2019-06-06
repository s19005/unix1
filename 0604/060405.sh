#!/bin/bash

function cont() {
    echo -n 'continue?(y/n)'
    read yesno
    if [ $yesno = 'n' ]; then
        echo 'end...'
        exit
    fi
    echo 'continue...'
}
cd $HOME/repo/unix1/
while :
do
    git status
    echo -n -e '1)add\n2commit\n3)push\n*)exit\nselect?(1/2/3/*): '
    read abc
    case "$abc" in
        1)
            git add -i
            ;;
        2)
            echo -n 'comment: '
            read comment
            git commit -m "$comment"
            git log --oneline
            ;;
        3)
            git push
            ~
            ;;
        \*)
            echo 'end...'
            break
    esac
done
