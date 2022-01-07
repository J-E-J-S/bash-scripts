#!/bin/bash
# opens a file with snapgene

if ! [[ -f $1 ]] ; then
    echo 'File does not exist.'
    exit 1
fi

if [[ $1 != *.fasta ]] && [[ $1 != *.fas ]] && [[ $1 != *.fa ]] &&  [[ $1 != *.gb ]] && [[ $1 != *.dna ]]; then
    echo "File format is not compatible."
    echo "Compatible formats: .fasta, .fas, .fa, .gb, .dna "
    exit 1
fi

{
    start "" 'C:\Program Files\snapgene\SnapGene.exe' $1
} || {
    echo "Snapgene not found, check path."
}
exit 0
