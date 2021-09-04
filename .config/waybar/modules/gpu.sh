#!/bin/bash

gpu_usage=$(cat /sys/class/drm/card0/device/gpu_busy_percent)

gpu_temp=$(cat /sys/class/hwmon/hwmon3/temp1_input | grep -Po '.*(?=...$)')

vram_used_mb=$(cat /sys/class/drm/card0/device/mem_info_vram_used | grep -Po '.*(?=......$)')
vram_total_mb=8192
vram_percent=$(awk "BEGIN { pc=100*${vram_used_mb}/${vram_total_mb}; i=int(pc); print (pc-i<0.5)?i:i+1 }")

echo "${gpu_usage}% |  ${gpu_temp}ªC |  ${vram_percent}%"
exit
