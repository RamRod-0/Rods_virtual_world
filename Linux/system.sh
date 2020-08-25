#!/bin/bash

#Free Avaliable Memory
free -h > ~/Backups/freemem/free_mem.txt

#Disk Usage
du -h > ~/Backups/diskuse/disk_usage.txt

#Free Disk  Space
df -h > ~/Backups/freedisk/free_disk.txt

#All Open Files
lsof > ~/Backups/openlist/open_list.txt
