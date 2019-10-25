#!/bin/bash

# Generates a experiment list (explist.md) for all
# Topspin experiments in the current folder. 
# The experiment number and the content of the 
# title file are written down. 

expList=./explist.md
currentPath=`pwd`
expFolder=(`basename $currentPath`)
longDash=(`printf '%.0s-' {1..80}`)
shortDash=(`printf '%.0s-' {1..20}`)

echo $expFolder > $expList
echo $longDash >> $expList

for exp in $(ls -vd ./[1-9]*)
do
    echo $exp >> $expList
    echo $shortDash >> $expList
    cat $exp/pdata/1/title >> $expList
    echo "\n" >> $expList
    echo $longDash >> $expList    
done
