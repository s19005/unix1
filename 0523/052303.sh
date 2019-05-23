ls -R ~/ 2> /dev/null | sort | grep -v '^$' | grep -v ':$' | head -n 5
