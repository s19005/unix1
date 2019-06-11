#!/bin/bash

summer=`date --date="2019/9/1" +'%s'`
now=`date +%s`

echo $(((summer - now)/(60 * 60 * 24)))
