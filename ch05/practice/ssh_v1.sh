#!/bin/bash -
# ssh_v1.sh
# ./ssh_v1.sh [ -h host] [ -u user ] [ -e command ]
while getopts 'h:u:e:i:' opt; do
  case ${opt} in
    i)
      CERT="-i ${OPTARG}"
      ;;
    h)
      HOST="${OPTARG}"
      ;;
    u)
      USER="${OPTARG}"
      ;;
    e)
      COMM="${OPTARG}"
      ;;
    *)
      exit 2
      ;;
  esac
done

if [[ "${HOST}" == "" ]] || [[ "${USER}" == "" ]] ; then
  echo "No host or user"
  exit 1
fi

echo "ssh -i ~/.ssh/jeff.kim.pem ${USER}@${HOST} ${COMM}"
ssh ${CERT} ${USER}@${HOST} ${COMM} > filelist.txt 2>&1
