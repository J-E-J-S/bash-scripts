#!/usr/bin/env zsh 

# Note this script requires gnumeric, install with: brew instal gnumeric 

# Check that an input file has been designated
if [ $# -eq 0 ]; then 
    echo "Please input .xlsx file to convert."
    exit 0 
fi 


# Check that file extension is .xlsx and create outFile .csv variable if so 
if [[ $1 == *.xlsx ]]; then 
    outFile=${1/%".xlsx"/".csv"} 
else 
    echo "Please input valid .xlsx file."
    exit 0 
fi 

# Convert .xlsx to .csv with gnumeric 
{
    ssconvert $1 $outFile
    exit 1  
} || {
    echo "Problem has occurred, check gnumeric is installed."
    echo "Install by: brew install gnumeric"
    exit 0 
}


