
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


MOY=0
SOM=`sed -n 1p $1`
CARD=`sed -n 2p $1`

MOY=$(($SOM / $CARD))

echo $MOY > $1


