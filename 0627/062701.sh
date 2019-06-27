#!/bin/bash

mkdir -p dir1/dir2/dir3

touch dir1/dir2/file{01..05} dir1/dir2/dir3/file{06..10}

tree

rm -r dir1
