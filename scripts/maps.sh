#! /bin/bash

# make catographer maps
cd ~/git/minecraftsite.git

THEFILE=gfworld-`date +%Y%m%d-%H%M`.png

~/git/pynemap/pynemap.py -o $THEFILE

sleep 1

ln $THEFILE current.png