sudo find /var -type f | xargs sudo du 2> /dev/null | sort -nr | head -n 5
