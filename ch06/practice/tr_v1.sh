#!/bin/bash -

F1=${1:-"tasks.txt"}

tr ';' '\t' < $F1
