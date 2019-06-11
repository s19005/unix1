#!/bin/bash

summer=`date --date="2019/9/1" +%j`
now=`date +%j`

echo "夏休みまであと$((summer - now))日です"
