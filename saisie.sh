
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


NOTE=0
rm -f $1
touch $1

while [ $NOTE -ge 0 ] && [[ ! (-z "$NOTE") ]] 
do
    read NOTE
    echo $NOTE >> $1

done

