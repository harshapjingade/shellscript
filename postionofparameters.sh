#!/bin/bash
i=0
for p in "$@"; do
  i=$((i+1))
  if [ "$p" = "c" ]; then
    echo "user supplied c has a parameter, in $i position"
  fi
done
