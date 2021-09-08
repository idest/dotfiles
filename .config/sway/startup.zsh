#!/usr/bin/zsh

sway_config="$1"

$TERMINAL --class python -e python &
$TERMINAL --class WeeChat -e weechat &
$BROWSER &

~/.config/sway/ws.py &
