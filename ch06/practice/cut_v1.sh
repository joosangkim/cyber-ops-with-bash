#!/bin/bash -

FILE=${1:-"task.txt"}
if [[ ! -f $FILE ]]; then
  printf "No file name %s exitsts." "$FILE"
fi

cut -d ';' -f 1,2,5 -s $FILE | sed 's/\;/\  /g' | tail -n +2
