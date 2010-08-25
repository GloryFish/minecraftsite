#! /bin/bash

THEDATE=`date +%Y%m%d-%H%M`

7z a ~/minecraft/backups/gfworld.$THEDATE.7z ~/minecraft/gfworld

# remove old backups, anything over 5days old
find ~/minecraft/backups -type f -mtime +5 -exec rm -f '{}' \;