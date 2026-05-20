#! /bin/bash
numbers=12
num=1

while [ $num -le $numbers ]
do
  if [ $num -lt 10 ]; then
     apatch="patch -p0 < ../bash44-00$num"
     echo "$apatch"
     num=$(( $num+1 ))
  else
     apatch="patch -p0 < ../bash4-0$num"
     echo "$apatch"
     num=$(( $num+1 ))
  fi
done
echo "Happy patching!"