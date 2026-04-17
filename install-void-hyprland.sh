#!/usr/bin/env bash
set -e

echo 'repository=https://raw.githubusercontent.com/Makrennel/hyprland-void/repository-x86_64-glibc' | sudo tee /etc/xbps.d/hyprland-void.conf

sudo xbps-install -Syu

sudo xbps-install -Sy \
    hyprland \
    xdg-desktop-portal \
    xdg-desktop-portal-hyprland \
    xorg-server-xwayland \
    pipewire \
    wireplumber \
    kitty \
    Waybar \
    wofi \
    dolphin \
    firefox \
    grim \
    slurp \
    wl-clipboard \
    brightnessctl \
    playerctl \
    NetworkManager \
    noto-fonts-ttf \
    noto-fonts-emoji \
    font-awesome
