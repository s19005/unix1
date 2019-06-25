#!/bin/bash

curl http://zip.cgis.biz/csv/zip.php?zn=$1 2> /dev/null | nkf -wLu
