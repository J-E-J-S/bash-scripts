#!/usr/bin/env zsh
# opens a file with snapgene

# open snapgene without file
if [ $# -eq 0 ]; then
    {
        '/Applications/SnapGene.app/Contents/MacOS/SnapGene'
        exit 0
    } || {
        echo "Snapgene not found, check path."
        exit 1
    }
fi

# check file exists
if ! [[ -f $1 ]] ; then
    echo 'File does not exist.'
    exit 1
fi

# check file is compatible with snapgene
if [[ $1 != *.fasta ]] && [[ $1 != *.fas ]] && [[ $1 != *.fa ]] &&  [[ $1 != *.gb ]] && [[ $1 != *.dna ]] && [[
$1 != *.gbk ]]; then
    echo "File format is not compatible."
    echo "Compatible formats: .fasta, .fas, .fa, .gb, .gbk, .dna "
    exit 1
fi

# handle bad snapgene path error
{
    '/Applications/SnapGene.app/Contents/MacOS/SnapGene' $1
    exit 0
} || {
    echo "Snapgene not found, check path."
    exit 1
}
