#!/bin/bash

#first manually create empty directories named with progressive numbers
#this will launch an indipendent replica of the system in each of the directories

directories="`ls -d [0-9]` `ls -d [0-9][0-9]`"
totrep=`echo $directories |wc -w`
echo " found $totrep directories"

for i in $directories
do
  echo "--- rep $i:"
  cd $i
  ../../queue_md.i.sh $i &
  cd ..
done
