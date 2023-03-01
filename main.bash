#!/bin/bash

if [ $# == 0 ]; then
    echo "Missing URL!"
    exit
fi

URL=$(curl -s -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36" "$1" | grep "<iframe" | awk '{print substr($5,6,length($5)-6)}')
echo "Clean URL: $URL"
