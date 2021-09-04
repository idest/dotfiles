export EDITOR="nvim"
export BROWSER="firefox-developer-edition"
export TERMINAL="kitty"

export PATH="$HOME/bin:$PATH"

# npm
export PATH="$HOME/.npm-global/bin:$PATH"

# jupyterlab
export JUPYTERLAB_DIR=$HOME/.local/share/jupyter/lab

# Fix java apps in sway
# https://github.com/swaywm/sway/issues/595
if [ "$XDG_SESSION_DESKTOP" = "sway" ] ; then
  export _JAVA_AWT_WM_NONREPARENTING=1
fi

export MOZ_ENABLE_WAYLAND=1

export NNN_COLORS='4235'
export NNN_FCOLORS='030304020008060801100501'

#export BEMENU_BACKEND=wayland
#export BEMENU_OPTS="--bottom \
#--tb #121212 \
#--tf #fabd2f \
#--fb #121212 \
#--ff #d5c4a1 \
#--nb #121212 \
#--nf #d5c4a1 \
#--hb #1d2021 \
#--hf #fabd2f \
#--sb #121212 \
#--sf #d5c4a1 \
#--scb #121212 \
#--scf #d5c4a1"

#define base00 #282828
#define base01 #3c3836
#define base02 #504945
#define base03 #665c54
#define base04 #bdae93
#define base05 #d5c4a1
#define base06 #ebdbb2
#define base07 #fbf1c7
#define base08 #fb4934
#define base09 #fe8019
#define base0A #fabd2f
#define base0B #b8bb26
#define base0C #8ec07c
#define base0D #83a598
#define base0E #d3869b
#define base0F #d65d0e

## normal
#color0 #282828
#color1 #fb4934
#color2 #b8bb26
#color3 #fabd2f
#color4 #83a598
#color5 #d3869b
#color6 #8ec07c
#color7 #d5c4a1

# bright
#color8 #665c54
#color9 #fb4934
#color10 #b8bb26
#color11 #fabd2f
#color12 #83a598
#color13 #d3869b
#color14 #8ec07c
#color15 #fbf1c7
#
## extended base16 colors
#color16 #fe8019
#color17 #d65d0e
#color18 #3c3836
#color19 #504945
#color20 #bdae93
#color21 #ebdbb2


#" fill it with absolute colors
#let s:gb.dark0_hard  = ['#1d2021', 234]     " 29-32-33
#let s:gb.dark0       = ['#282828', 235]     " 40-40-40
#let s:gb.dark0_soft  = ['#32302f', 236]     " 50-48-47
#let s:gb.dark1       = ['#3c3836', 237]     " 60-56-54
#let s:gb.dark2       = ['#504945', 239]     " 80-73-69
#let s:gb.dark3       = ['#665c54', 241]     " 102-92-84
#let s:gb.dark4       = ['#7c6f64', 243]     " 124-111-100
#let s:gb.dark4_256   = ['#7c6f64', 243]     " 124-111-100
#
#let s:gb.gray_245    = ['#928374', 245]     " 146-131-116
#let s:gb.gray_244    = ['#928374', 244]     " 146-131-116
#
#let s:gb.light0_hard = ['#f9f5d7', 230]     " 249-245-215
#let s:gb.light0      = ['#fbf1c7', 229]     " 253-244-193
#let s:gb.light0_soft = ['#f2e5bc', 228]     " 242-229-188
#let s:gb.light1      = ['#ebdbb2', 223]     " 235-219-178
#let s:gb.light2      = ['#d5c4a1', 250]     " 213-196-161
#let s:gb.light3      = ['#bdae93', 248]     " 189-174-147
#let s:gb.light4      = ['#a89984', 246]     " 168-153-132
#let s:gb.light4_256  = ['#a89984', 246]     " 168-153-132
#
#let s:gb.bright_red     = ['#fb4934', 167]     " 251-73-52
#let s:gb.bright_green   = ['#b8bb26', 142]     " 184-187-38
#let s:gb.bright_yellow  = ['#fabd2f', 214]     " 250-189-47
#let s:gb.bright_blue    = ['#83a598', 109]     " 131-165-152
#let s:gb.bright_purple  = ['#d3869b', 175]     " 211-134-155
#let s:gb.bright_aqua    = ['#8ec07c', 108]     " 142-192-124
#let s:gb.bright_orange  = ['#fe8019', 208]     " 254-128-25
#
#let s:gb.neutral_red    = ['#cc241d', 124]     " 204-36-29
#let s:gb.neutral_green  = ['#98971a', 106]     " 152-151-26
#let s:gb.neutral_yellow = ['#d79921', 172]     " 215-153-33
#let s:gb.neutral_blue   = ['#458588', 66]      " 69-133-136
#let s:gb.neutral_purple = ['#b16286', 132]     " 177-98-134
#let s:gb.neutral_aqua   = ['#689d6a', 72]      " 104-157-106
#let s:gb.neutral_orange = ['#d65d0e', 166]     " 214-93-14
#
#let s:gb.faded_red      = ['#9d0006', 88]      " 157-0-6
#let s:gb.faded_green    = ['#79740e', 100]     " 121-116-14
#let s:gb.faded_yellow   = ['#b57614', 136]     " 181-118-20
#let s:gb.faded_blue     = ['#076678', 24]      " 7-102-120
#let s:gb.faded_purple   = ['#8f3f71', 96]      " 143-63-113
#let s:gb.faded_aqua     = ['#427b58', 66]      " 66-123-88
#let s:gb.faded_orange   = ['#af3a03', 130]     " 175-58-3




# cs50 environment variables
#export CC=clang
#export CFLAGS="-ggdb3 -O0 -std=c99 -Wall -Werror"
#export LDLIBS="-lcs50 -lm"
#export LDLIBS="-lcs50"

# see https://unix.stackexchange.com/questions/62579/is-there-a-way-to-add-a-directory-to-my-path-in-zsh-only-if-its-not-already-pre
typeset -U path
