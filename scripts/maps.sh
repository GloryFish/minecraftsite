#! /bin/bash

# make catographer maps
cd ~/git/minecraftsite.git/www/maps/

TOPFILE=gfworld-top-`date +%Y%m%d-%H%M`.png
OBAFILE=gfworld-oba-`date +%Y%m%d-%H%M`.png

~/ct10t/ct10t -o $TOPFILE -w ~/minecraft/gfworld/
~/ct10t/ct10t -o $OBAFILE -w ~/minecraft/gfworld/ -y  

rm -f overhead.png
rm -f oblique-angled.png
rm -f current.png

ln $TOPFILE overhead.png
ln $OBAFILE oblique-angled.png
ln $OBAFILE current.png
