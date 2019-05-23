ls -R ~/ 2> /dev/null | sort | grep -v '^$' | grep -v ':$' | tail -n 5
