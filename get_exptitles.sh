#! /bin/bash

# Generates a experiment list (explist.md) for all
# Topspin experiments in the current folder. 
# The experiment number and the content of the 
# title file are written down. 

expList=./explist.md

currentPath=`pwd`
expFolder=(`basename $currentPath`)
longDash=(`printf '%.0s-' {1..79}`)

echo $expFolder > $expList
printf '\n' >> $expList
echo $longDash >> $expList
printf '\n' >> $expList

# Enable + wildcard
shopt -s extglob
for exp in $(ls -vd ./+([0-9]))
do
    echo $exp >> $expList
    printf '\n' >> $expList
    cat $exp/pdata/1/title >> $expList
    printf '\n' >> $expList
    echo $longDash >> $expList
    printf '\n' >> $expList
done
