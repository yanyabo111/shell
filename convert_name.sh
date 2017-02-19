#!/bin/sh

i=1

for file in ./tmp/* ; do
    fileName=${file/\.\/tmp\//}
    
    # clean file name
    newName=$(echo $fileName | perl -pe 's/-.*\.mp4//g')
    newName=$(echo $newName | perl -pe 's/\.mp4//g')
    newName=$(echo $newName | perl -pe 's/John\ Wall\ //g')
    newName=$(echo $newName | perl -pe 's/Jabari\ Parker\ \&\ //g')
    newName=$(echo $newName | perl -pe 's/([\s\S].*)\ vs/vs\ $1/g')
    newName=$(echo $newName | perl -pe 's/vs\ Full/Full/g')
    # echo $newName

    if [ "$fileName" != "youtube_cut.sh" ] && [ "$fileName" != "convert_name.sh" ] && [ "$fileName" != "*" ]; then
        mv tmp/"$fileName" tmp/"$newName".mp4
    fi
done
