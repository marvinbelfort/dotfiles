#!/bin/bash

while read line; do
  echo "Working on:" $line
  git mv deps/vim/$line vim/pack/allpackages/start 
done <list
