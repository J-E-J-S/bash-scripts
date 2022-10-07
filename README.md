# Quality of Life System Scripts  

## Guide    
Intended for use with git bash on a windows environment.  
Move all scripts to `/usr/bin/`  
Change permission of scripts: `chmod + <script.sh>`  
To use script as a command, create alias in .bashrc file  
e.g `alias snapgene='/usr/bin/snapgene.sh';`    

`snapgene.sh` --> Open a file (.fasta, .fas, .fa, .gb, .dna) with snapgene.  
`tree.sh` --> Generate Windows command prompt tree-type output in shell.  
`gb2dna.sh` --> Convert any accepted file format to SnapGene format (.dna).  
`xlsx2csv.sh` --> Convert .xlsx excel files to .csv with gnumeric (install: brew install gnumeric)