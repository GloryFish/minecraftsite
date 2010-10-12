#! /bin/bash

# make catographer maps
cd ~/git/minecraftsite/www/maps/

TOPFILE=gfworld-top-`date +%Y%m%d-%H%M`.png
OBAFILE=gfworld-oba-`date +%Y%m%d-%H%M`.png
NIGHTFILE=gfworld-night-`date +%Y%m%d-%H%M`.png
CAVEFILE=gfworld-cave-`date +%Y%m%d-%H%M`.png

~/git/c10t/c10t -o $TOPFILE -w ~/minecraft/gfworld/
~/git/c10t/c10t -o $OBAFILE -w ~/minecraft/gfworld/ -y
~/git/c10t/c10t -o $NIGHTFILE -w ~/minecraft/gfworld/ -y --night
~/git/c10t/c10t -o $CAVEFILE -w ~/minecraft/gfworld/ -y --cave-mode

rm -f overhead.png
rm -f oblique-angled.png
rm -f current.png
rm -f night.png
rm -f cave.png

ln $TOPFILE overhead.png
ln $OBAFILE oblique-angled.png
ln $OBAFILE current.png
ln $NIGHTFILE night.png
ln $CAVEFILE cave.png
