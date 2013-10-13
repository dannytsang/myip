#!/bin/bash

# $1 = text to write to file.
writeToFile () {
    textToFile=$1
    # Write first parameter to file
    echo "Writing $textToFile to $IP_FILE_PATH"
    echo "$textToFile" > $IP_FILE_PATH
}
