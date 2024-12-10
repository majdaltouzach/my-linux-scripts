#!/bin/sh 
echo "Input Search query:"
read QUERY
mov-cli -s youtube "${QUERY}"
