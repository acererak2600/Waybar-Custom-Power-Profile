#!/usr/bin/env bash

# Get current power profile
get_profile() {
    current_profile=$(powerprofilesctl get)
    case $current_profile in
        "power-saver")
            echo '{"text":"","class":"power-saver","tooltip":"Power Saver"}'
            ;;
        "balanced")
            echo '{"text":"","class":"balanced","tooltip":"Balanced"}'
            ;;
        "performance")
            echo '{"text":"","class":"performance","tooltip":"Performance"}'
            ;;
        *)
            echo '{"text":"?","class":"unknown","tooltip":"Unknown Power Profile"}'
            ;;
    esac
}

# Toggle between power profiles
toggle_profile() {
    current_profile=$(powerprofilesctl get)
    case $current_profile in
        "power-saver")
            powerprofilesctl set balanced
            ;;
        "balanced")
            powerprofilesctl set performance
            ;;
        "performance")
            powerprofilesctl set power-saver
            ;;
        *)
            powerprofilesctl set balanced
            ;;
    esac
}

# Handle arguments
case $1 in
    "toggle")
        toggle_profile
        ;;
    *)
        get_profile
        ;;
esac
