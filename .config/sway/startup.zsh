#!/usr/bin/zsh

sway_config="$1"

$TERMINAL --class python -e python &
$TERMINAL --class WeeChat -e weechat &
$BROWSER &

#$TERMINAL --class nvim -e nvim ~/projects/andestm/standalone-xarray/litho.py &
#$BROWSER &
#$TERMINAL --class atmxrJL zsh -c "source ~/.virtualenvs/andestm-xarray/bin/activate; exec zsh" &
#$TERMINAL --class atmxr zsh -c "source ~/.virtualenvs/andestm-xarray/bin/activate; exec zsh" &
#$TERMINAL --class heateqJL zsh -c "source ~/.virtualenvs/andestm-xarray/bin/activate; exec zsh" &
#$TERMINAL --class heateq zsh -c "source ~/.virtualenvs/andestm-xarray/bin/activate; exec zsh" &

~/dotfiles/.config/sway/ws-1.py &
