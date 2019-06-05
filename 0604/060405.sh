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
git status
cont
echo -n 'a.add b.commit c.push *.exit: '
read abc
case "$abc" in
	a)
		git add -i
		;;
	b)
		echo -n 'comment: '
		read comment
		git commit -m "$comment"
		git log --oneline
		;;
	c)
		git push
		~
		;;
	\*)
		echo 'exit...'
		exit
esac

