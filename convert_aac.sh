#!/bin/sh

i=1

for file in ./tmp/* ; do
    fileName=${file/\.\/tmp\//}
    newName=${fileName/.mkv/}

    ffmpeg -i tmp/"$fileName" -c:v libx264 -preset slow -crf 22 -c:a aac -b:a 256k -vf subtitles=tmp/"$fileName" tmp/"$newName".mp4

    # if [ "$fileName" != "youtube_cut.sh" ] && [ "$fileName" != "convert_name.sh" ] && [ "$fileName" != "*" ]; then
    #     echo "removing $1...\n\n\n"
    #     rm tmp/"$fileName"
    # fi

    i=$((i+1))
done
