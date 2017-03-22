
#! bin/bash/
# le script prend en parametre un nom de fichier

if [ $# -ne 1 ]
then
    echo "il faut exactement 1 paramètre !"
    exit
fi

NOTE=0

touch $1

while [ $NOTE -ge 0 ]
do
    read NOTE
    echo $NOTE >> $1

done

