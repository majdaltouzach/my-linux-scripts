#!/bin/sh 
xfce4-terminal -x echo "Input Search query:"
read QUERY
mov-cli -s youtube "${QUERY}"
exit 0
