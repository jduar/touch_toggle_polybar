# touch_toggle_polybar
Plugin for polybar which allows the user to toggle the "disable touchpad while typing" behaviour.

The plugin adds a module to the bar which displays a mouse pointer icon which is, by default, white if the behaviour is activated and grey otherwise. Clicking on the icon toggles the behaviour.

To add this plugin to polybar, place touch_toggle.sh in the same folder as polybar's config file (probably ~/.config/polybar, otherwise you'll have to change the path included in the script), and add the following to your polybar config:


```
[module/touch_toggle]
type = custom/script
interval = 2

exec = ~/.config/polybar/touch_toggle.sh
click-left = ~/.config/polybar/touch_toggle.sh --click
```
