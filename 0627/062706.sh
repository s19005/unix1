#!/bin/bash

cd /tmp
tar cjf home-`date '+%Y%m%d'`.tar.bz2 -X ~/ex.cnf "$HOME"
