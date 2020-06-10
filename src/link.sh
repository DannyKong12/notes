#! /bin/bash

for f in $1/*
do
  if [ -d "$f" -a "$f" != "./src" ]
  then
    cd $f
    ../src/insert_links.sh
    cd ..
  fi
done
