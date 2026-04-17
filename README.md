# pupaland

Shared Hyprland dotfiles.

## Layout

- `hypr/hyprland.conf` - main Hyprland entrypoint
- `hypr/conf.d/` - split Hyprland modules
- `kitty/` - Kitty terminal config
- `waybar/` - Waybar config
- `wofi/` - Wofi config
- `*/scripts/` - helper scripts stored next to the component that uses them

## Install

```sh
./install.sh
```

The repository is the source of truth. `install.sh` creates symlinks in
`~/.config` with plain `ln -sfn`.

## Void Linux Packages

```sh
./install-void-hyprland.sh
```
