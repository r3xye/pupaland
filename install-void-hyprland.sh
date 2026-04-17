#!/usr/bin/env bash
set -e

sudo xbps-install -Sy \
    void-repo-multilib \
    void-repo-nonfree \
    void-repo-multilib-nonfree

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
    dbus \
    dbus-x11 \
    elogind \
    polkit \
    noto-fonts-ttf \
    noto-fonts-emoji \
    font-awesome \
    steam \
    steam-udev-rules \
    linux-headers \
    nvidia \
    nvidia-dkms \
    nvidia-firmware \
    nvidia-libs-32bit \
    nvtop \
    mesa-demos \
    mesa-32bit \
    mesa-dri-32bit \
    mesa-libgallium-32bit \
    libgbm-32bit \
    Vulkan-Tools \
    vulkan-loader-32bit \
    mesa-vulkan-intel \
    mesa-vulkan-intel-32bit \
    mesa-vulkan-nouveau \
    mesa-vulkan-nouveau-32bit

for service in dbus elogind polkitd NetworkManager; do
    if [ -d "/etc/sv/$service" ] && [ ! -e "/var/service/$service" ]; then
        sudo ln -s "/etc/sv/$service" "/var/service/$service"
    fi
done
