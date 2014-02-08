#!/bin/bash

# Load configuration
source config.sh

source writer.sh

# Get IP
newIp=`curl $IP_SITE`

# Get last IP if any
if [ -f $IP_FILE_PATH ]
then
    read -r oldIp < $IP_FILE_PATH
    
    # Check if old and new IP are a match
    if [ "$newIp" != "$oldIp" ]
    then
        echo "New IP: $newIp does not match old IP: $oldIp"
        writeToFile $newIp
    fi
else
    # No previous IP file found so create one.
    writeToFile $newIp
fi

