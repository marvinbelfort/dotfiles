#!/bin/bash

while read line; do
  cd $line
  URL=$(git remote -v | head -n 1 | awk '{print $2}')
  echo $URL
  cd - > /dev/null
done <plugin_list
