#!/bin/bash -

F1=${1:-"procowner.txt"}
F2=${2:-"tasks.txt"}

join -t ';' -1 2 -2 2 $F1 $F2


