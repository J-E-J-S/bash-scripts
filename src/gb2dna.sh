#!/bin/bash
# converts accepted files to .dna, snapgene must be closed to use

inputFile=$1
outputFile=$inputFile

"/c/Program Files/SnapGene/SnapGene.exe" -c 'SnapGene' -i $inputFile -o $outputFile
