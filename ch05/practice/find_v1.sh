#!/bin/bash -
# find_v1.sh
# ./find_v1.sh [ -d DIR ][ -n FILENAME ] [ -s CONTENTS_REGEXP ] [ -e EXEC ]

DIR="."
while getopts 'd:n:s:e:' opt; do
  case "${opt}" in
    d) # Target DIR
      DIR="${OPTARG}"
      ;;
    n) # Search by File name
      FILEOPT="-name ${OPTARG}"
      ;;
    s) # Find contents
      GREPOPT="-exec grep ${OPTARG} {} \;"
      ;;
    e) # Run exec
      EXECOPT="-exec ${OPTARG} {} \;"
      ;;
    *)
      exit 2 ;;
  esac

done

find ${DIR} ${FILEOPT} ${GREPOPT} ${EXECOPT} > result.txt 2>&1
