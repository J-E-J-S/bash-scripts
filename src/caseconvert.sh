#!/usr/bin/env zsh 

# For converting case (lower -> upper, or upper -> lower)

input=$2 


while getopts ":l:u:" opt; do
    case ${opt} in 
        l) 
            echo $input | tr '[:upper:]' '[:lower:]'
            ;;
        u) 
            echo $input | tr '[:lower:]' '[:upper:]'
            ;;
        *) 
            echo "Unidirectional Case Conversion."
            echo "Usage: convertcase [options] STRING"
            echo "Options:"
            echo "  -h  output usage information"
            echo "  -l  convert string from upper to lowercase"
            echo "  -u  convert string from lower to uppercase" 
            ;;      
    esac
done

            

        
