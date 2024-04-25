echo "$1 - target directory"
echo "$2 - destination directory"


searchFiles() {

for i in "$1"/*
do
    if [[ -d $i ]]; then
        searchFiles $i $2 
    else
        cp $i $2
    fi

done

}


searchFiles $1 $2