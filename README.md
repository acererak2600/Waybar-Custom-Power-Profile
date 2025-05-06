# Waybar-Custom-Power-Profile
Custom Waybar module to implement power profiles as power-profile-daemon module doesn't work

This custom module uses powerprofilectl 0.21 (Power-profile-daemon) to manage power profiles.
Tested only using Ubuntu 24.04.2 LTS with Hyprland 0.39.1

power-profile.sh has two very simple functions:
get_profile() - runs powerprofilesctl get to find the current power profile and assign the icon, class & tooltip.
toggle_profile() - toggles through the default power profiles in powerprofilesctl

This script is called through the custom module.

Styling is very simple.
Just defining a colour for the icon.
Style.css was taken from my existing waybar style.css and as such may need to be added to an existing setup to work.
