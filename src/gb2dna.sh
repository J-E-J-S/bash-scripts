#!/bin/bash
# converts accepted files to .dna, snapgene must be closed to use

inputFile=$1
outputFile=$inputFile

while getopts ":h" opt; do
    case ${opt} in
        h )
            echo "Usage:"
            echo "Convert accepted file formats to SnapGene format (.dna)."
            echo "       ./gb2dna.sh inputFile"
            echo "       ./gb2dna.sh -h        Display this Help Message."
            exit 0
            ;;
        \? )
            echo "Usage:"
            echo "Convert accepted file formats to SnapGene format (.dna)."
            echo "       ./gb2dna.sh inputFile"
            echo "       ./gb2dna.sh -h        Display this Help Message."
            exit 1
        ;;
    esac
done

"/c/Program Files/SnapGene/SnapGene.exe" -c 'SnapGene' -i $inputFile -o $outputFile
if [[ $? -eq 0 ]]
then
    exit 0
else
    echo "A problem has occurred, check file format is accepted."
    exit 1
fi
