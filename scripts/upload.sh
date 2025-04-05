#!/bin/bash
source $CONFIG
cd /tmp/ci/out/target/product/$DEVICE
curl -F "file=@${OUTPUT}" https://temp.sh/upload >> upload.txt
wget https://github.com/Sushrut1101/GoFile-Upload/raw/master/upload.sh >> /dev/null
chmod +x upload.sh
clearl
./upload.sh $OUTPUT
echo
cat upload.txt
