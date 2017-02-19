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


    echo "converting $1...\n\n\n"
    # ffmpeg -loglevel panic -i tmp/"$fileName" -ss 00:00:18.0 -c copy tmp/"$newName".mp4
    ffmpeg -loglevel panic -i "冷S爆插肛交眼镜妹子的菊花.mp4" -ss 00:10:50.0 -c copy "冷S爆插肛交眼镜妹子的菊花1.mp4"

    if [ "$fileName" != "youtube_cut.sh" ] && [ "$fileName" != "convert_name.sh" ] && [ "$fileName" != "*" ]; then
        echo "removing $1...\n\n\n"
        rm tmp/"$fileName"
    fi

    i=$((i+1))
done
