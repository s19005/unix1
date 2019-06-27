#!/bin/bash

echo -n -e '1)git log\n2)git log --oneline\n3)git log --oneline --name-only\n*)exit\nselect?(1/2/3/*): '
read abc
case "$abc" in
    1)
        git log
        ;;
    2)
        git log --oneline
        ;;
    3)
        git log --oneline --name-only
        ;;
    *)
        echo 'end...'
        exit
esac
