#!/bin/bash

export MYHOME=`pwd`

for i in *
do 
  if [ -d "${i}" ]
  then
    cp -vf ./make-movie.sh ${i}
    cd ${i} && ./make-movie.sh && cd "${MYHOME}"
  fi
done

# eof
