#!/bin/bash
start_download () {
 youtube-dl \
   --config-location ./youtube-dl.config \
   "$1 $2" \
   -o "./data/$3/$1/%(id)s.%(ext)s"
}

export -f start_download

for FILE in ./querylists/*; do 
 
 echo "Starting Download for $FILE"
 LANG=$(basename "${FILE%.txt}")
 PREFIX=$(trans -b -e bing -t $LANG interview)

 parallel -a $FILE \
  start_download {} $PREFIX $LANG
  
done
    

