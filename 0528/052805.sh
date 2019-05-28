sudo find /var -type f | xargs sudo du 2> /dev/null | grep '^0' 
