#!/bin/bash

tst_file=mktemp
max_wait=10

while [ ${max_wait} -gt 0 ] ; do
  max_wait=$((max_wait-1))
  [ $(ls ${tst_file} >/dev/null 2>&1 | wc -l) -eq 0 ] && max_wait=0
  sleep 1
done

exit 0
