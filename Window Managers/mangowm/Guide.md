# Replication Guide
---
## Dependencies
### AUR
```bash
yay -S mangowc-git
```
### Pacman
```bash
sudo pacman -S foot wmenu wl-clipboard grim slurp swaybg waybar thunar ttf-jetbrains-mono-nerd gnome-themes-extra swaylock
```
## Git
```bash
git clone --depth=1 https://github.com/Flaxtrux/dotfiles.git ~/dotfiles
```
---
## File Structure
```
~/.config/mango/
├── config.conf       # Main window manager config
├── config.jsonc      # Waybar config
├── style.css         # Waybar styles
├── rebar.sh          # Script to reload Waybar
└── powermenu.sh      # Script for power menu

/usr/local/bin/
└── snip              # Screenshot script
```
---
## Configuration
### 1. Mangowm
Copy the main config file:
```bash
cp ~/dotfiles/Window\ Managers/mangowm/config.conf ~/.config/mango/config.conf
```

> [!note]
> Personally I like to be able to read my keybinds easily so I do `ln -s ~/.config/mango/config.conf ~/config.conf`.
### 2. Scripts for waybar
```bash
cp ~/dotfiles/Window\ Managers/mangowm/rebar.sh ~/.config/mango/rebar.sh
chmod +x ~/.config/mango/rebar.sh
cp ~/dotfiles/Window\ Managers/mangowm/powermenu.sh ~/.config/mango/powermenu.sh
chmod +x ~/.config/mango/powermenu.sh
```
### 3. Snip script (screenshots)
```bash
sudo cp ~/dotfiles/Window\ Managers/mangowm/snip /usr/local/bin/snip
sudo chmod +x /usr/local/bin/snip
```
---
## Waybar

Copy the config files:
```bash
cp ~/dotfiles/Window\ Managers/mangowm/config.jsonc ~/.config/mango/config.jsonc
cp ~/dotfiles/Window\ Managers/mangowm/style.css ~/.config/mango/style.css
```

Launch manually to test:
```bash
waybar -c ~/.config/mango/config.jsonc -s ~/.config/mango/style.css
```
---
## Main Keybinds
| Shortcut | Action |
|-------|--------|
| `SUPER + Enter` | Open foot |
| `SUPER + D` | wmenu launcher |
| `SUPER + Q` | Close window |
| `SUPER + R` | Reload config |
| `SUPER + SHIFT + F` | Open thunar |
| `SUPER + SHIFT + R` | Reload Waybar |
| `SUPER + S` | Screenshot |
| `SUPER + T` | Toggle floating |
| `SUPER + F` | Toggle fullscreen |
| `SUPER + N` | Cycle layouts |
| `SUPER + 0` | Toggle overview |
| `SUPER + 1-9` | Switch tag |
| `SUPER + Arrows` | Move focus |
| `SUPER + SHIFT + HJKL` | Swap windows |
| `SUPER + SHIFT + F` | Open Thunar |

---
## Mouse
| Shortcut | Action |
|-------|--------|
| `SUPER + Left click` | Move floating window |
| `SUPER + Right click` | Resize window |

---
## Reload everything
```bash
pkill mango ; mango
```

> [!tip]
> To check for config errors before launching: `mango -p`

---
