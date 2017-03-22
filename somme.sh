
#! bin/bash/
# le script prend en parametre un nom de fichier

if [ $# -ne 1 ]
then
    echo "il faut exactement 1 paramètre !"
    exit
fi

if ! [[ -f $1 ]]
then
    echo '$1 n est pas un fichier'
fi

SOM=0
TMP=0
CMPT=0
while  read TMP 
do
    if [ $TMP -lt 0 ]
    then
	echo "$SOM" > $1
	echo "$CMPT" >> $1
	exit
    fi

    SOM=$(( $SOM + $TMP ))
    CMPT=$(( $CMPT + 1 ))
done < $1

echo $SOM > $1


