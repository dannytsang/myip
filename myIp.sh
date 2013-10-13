#!/bin/bash

# Load configuration
source config.sh

# Get IP
curl ifconfig.me > $IP_FILE_PATH

