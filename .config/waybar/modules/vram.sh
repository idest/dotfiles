#!/bin/bash
vram_used_mb=$(cat /sys/class/drm/card0/device/mem_info_vram_used | grep -Po '.*(?=......$)')
vram_total_mb=8192
vram_percent=$(awk "BEGIN { pc=100*${vram_used_mb}/${vram_total_mb}; i=int(pc); print (pc-i<0.5)?i:i+1 }")
echo $vram_percent
exit
