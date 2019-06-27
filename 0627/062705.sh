#!/bin/bash

new_years_eve=`date --date="2019/12/31" +%j`
now=`date +%j`

echo "大晦日まであと$((new_years_eve - now))日です"
