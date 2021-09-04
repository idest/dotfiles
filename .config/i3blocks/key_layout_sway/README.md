# key_layout_sway

Display the current keyboard layout using swaymsg -t get_inputs.

# Installation

Use the following in your i3blocks config:

```ini
[key_layout]
command=$SCRIPT_DIR/key_layout_sway
label=Layout
interval=30
```
