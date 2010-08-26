#! /bin/bash

# make catographer maps
cd ~/git/minecraftsite.git/www/maps/

OBFILE=gfworld-ob-`date +%Y%m%d-%H%M`.png
TOPFILE=gfworld-top-`date +%Y%m%d-%H%M`.png
OBAFILE=gfworld-oba-`date +%Y%m%d-%H%M`.png

~/git/pynemap/pynemap.py -o $TOPFILE -r overhead -v ~/minecraft/gfworld/level.dat 
~/git/pynemap/pynemap.py -o $OBFILE -r oblique -v ~/minecraft/gfworld/level.dat 
~/git/pynemap/pynemap.py -o $OBAFILE -r oblique_angled -v ~/minecraft/gfworld/level.dat 

rf -f overhead.png
rf -f oblique.png
rf -f oblique-angled.png
rf -f current.png

ln $TOPFILE overhead.png
ln $OBFILE oblique.png
ln $OBAFILE oblique-angled.png
ln $OBFILE current.png