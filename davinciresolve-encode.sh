#!/bin/sh
env DRI_PRIME=1 ffmpeg -i something.mp4 -vcodec mjpeg -q:v 2 -acodec pcm_s16be -q:a 0 -f mov output.mov
