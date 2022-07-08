#!/usr/bin/bash
if [ $# -ne 1 ]; then
    echo "usage:" $0 server:version
    exit
fi
rm -f server
mv main server
chmod +x server
echo "build " $1
docker build -t $1 .