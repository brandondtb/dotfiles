#!/usr/bin/env bash

font_scale_factor=`gsettings get org.gnome.desktop.interface text-scaling-factor`

if [ "$font_scale_factor" == "1.0" ]; then
  gsettings set org.gnome.desktop.interface text-scaling-factor 1.25
else
  gsettings set org.gnome.desktop.interface text-scaling-factor 1.0
fi
