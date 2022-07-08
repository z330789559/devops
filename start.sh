#!/usr/bin/bash
if [ $# -ne 1 ]; then
    echo "usage:" $0 server:version
    exit
fi
docker stop chain-server ;docker rm chain-server
docker run -d   -p 12325:12325 --restart=always  --name=chain-server -e ENV="release"  -e SERVICE_NAME="chain-server"  $1