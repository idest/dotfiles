#!/bin/bash
pkill -SIGRTMIN+8 waybar

#if [ "$PLAYER_EVENT" = "start" ] || [ "$PLAYER_EVENT" = "change" ];
#then
  #trackName=$(playerctl metadata title)
  #artistAndAlbumName=$(playerctl metadata --format "{{ artist }} ({{ album }})")

  #notify-send -u low "$trackName" "$artistAndAlbumName "

#fi
