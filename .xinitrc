#!/bin/bash

$HOME/screenlayout/display.sh
xsetroot -cursor_name left_ptr
picom -f &
exec bspwm
