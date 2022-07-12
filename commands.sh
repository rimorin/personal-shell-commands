#Mask 3/4 of a string with *
mask() printf '%s\n' ${(l[$#1][*])1:$#1*3/4}

#Create directory and auto dir into the new directory
mkcd() { mkdir -p $1; cd $1 }

#Dir into a directory and list its files
cls() { cd "$1"; ls;}

#Most used shell commands
topcmd() { history | awk '{ print $2 }' | sort | uniq -c |sort -rn | head }
