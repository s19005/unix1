#!/bin/bash

curl "http://express.heartrails.com/api/json?method=getLines&prefecture=$1" 2> /dev/null | jq '.response.line[]'
