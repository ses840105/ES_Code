#!/bin/bash

echo "======================"
echo "Rebase git" + $1
echo "======================"

if [ "$1" == "ALL" ] || [ "$1" == "all" ] 
  then
    TargetList="C2F2 CommonUtils gtal R3 GQ B9 R4 O6 R4O6 P7 P22/c10p10"
else
  TargetList="$1"
fi

for target in $TargetList;
do
echo "======================"
echo "Rebase git" + $target
echo "======================"
	cd ~/$target
    git fetch origin master
	git rebase origin/master
done


