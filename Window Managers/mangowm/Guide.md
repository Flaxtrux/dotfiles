# Replication Guide
---
## Dependencies
### AUR
```bash
yay -S mangowc-git
```
### Pacman
```bash
sudo pacman -S foot wmenu wl-clipboard grim slurp swaybg waybar thunar ttf-jetbrains-mono-nerd gnome-themes-extra
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
└── rebar.sh          # Script to reload Waybar

/usr/local/bin/
└── snip              # Screenshot script
```
---
## Configuration
### 1. Mangowm
Copy the main config file:
```bash
cp "~/dotfiles/Window Managers/mangowm/config.conf" ~/.config/mango/config.conf
```

> [!note]
> Personally I like to be able to read my keybinds easily so I do `ln -s ~/.config/mango/config.conf ~/config.conf`.
### 2. Rebar script
```bash
cp "~/dotfiles/Window Managers/mangowm/rebar.sh" ~/.config/mango/rebar.sh
chmod +x ~/.config/mango/rebar.sh
```
### 3. Snip script (screenshots)
```bash
sudo cp "~/dotfiles/Window Managers/mangowm/snip" /usr/local/bin/snip
sudo chmod +x /usr/local/bin/snip
```
---
## Waybar

Copy the config files:
```bash
cp "~/dotfiles/Window Managers/mangowm/config.jsonc" ~/.config/mango/config.jsonc
cp "~/dotfiles/Window Managers/mangowm/style.css" ~/.config/mango/style.css
```

Launch manually to test:
```bash
waybar -c ~/.config/mango/config.jsonc -s ~/.config/mango/style.css
```
---
## Main Keybinds
| Shortcut | Action |
|-------|--------|
| `ALT + Enter` | Open foot |
| `ALT + D` | wmenu launcher |
| `ALT + Q` | Close window |
| `ALT + R` | Reload config |
| `ALT + SHIFT + F` | Open thunar |
| `ALT + SHIFT + R` | Reload Waybar |
| `ALT + S` | Screenshot |
| `ALT + T` | Toggle floating |
| `ALT + F` | Toggle fullscreen |
| `ALT + N` | Cycle layouts |
| `ALT + 0` | Toggle overview |
| `ALT + 1-9` | Switch tag |
| `ALT + Arrows` | Move focus |
| `ALT + SHIFT + HJKL` | Swap windows |
| `ALT + SHIFT + F` | Open Thunar |

---
## Mouse
| Shortcut | Action |
|-------|--------|
| `ALT + Left click` | Move floating window |
| `ALT + Right click` | Resize window |

---
## Reload everything
```bash
pkill mango ; mango
```

> [!tip]
> To check for config errors before launching: `mango -p`

---