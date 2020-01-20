#! /bin/csh

# Estimate noise from a NMRPipe-formatted pseudo4D spectrum
# stored as folders containing 3D spectra, each of them a 
# collection of 2D planes:
#    ./ftXX/test03%d.dat


# Arguments:
#   expDir: Path to experiment

set expDir = $1
cd $expDir
set dirList = (`ls -d ./ft*/ -v`)
set noiseList = ./noise.list 
rm -rf $noiseList

@ i = 0
foreach spectrum ($dirList)
    set noise = (`specStat.com -in $spectrum/test%03d.dat -stat vEstNoise -brief`)
    echo $spectrum $noise
    printf $noise'\n'>> $noiseList
    @ i++
end
