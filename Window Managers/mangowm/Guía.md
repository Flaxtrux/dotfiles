# Guía de Replicación
---
## Dependencias
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
git clone "https://github.com/Flaxtrux/dotfiles/Window Managers/mangowm" ~/
```
---
## Estructura de archivos
```
~/.config/mango/
├── config.conf       # Config principal del gestor de ventanas
├── config.jsonc      # Config de Waybar
├── style.css         # Estilos de Waybar
└── rebar.sh          # Script para recargar Waybar

/usr/local/bin/
└── snip              # Script de captura de pantalla
```
---
## Configuración
### 1. Mangowm
Copiar el archivo de configuración principal:
```bash
cp ~/mangowm/config.conf ~/.config/mango/config.conf
```

> [!note]
> Personalmente me gusta poder leer mis atajos facilmente así que hago un `ln -s ~/.config/mango/config.conf ~/config.conf`. 
### 2. Script rebar
```bash
cp ~/mangowm/rebar.sh ~/.config/mango/rebar.sh
chmod +x ~/.config/mango/rebar.sh
```
### 3. Script snip (capturas)
```bash
sudo cp ~/mangowm/snip /usr/local/bin/snip
sudo chmod +x /usr/local/bin/snip
```
---
## Waybar

Copiar los archivos de configuración:
```bash
cp ~/mangowm/config.jsonc ~/.config/mango/config.jsonc
cp ~/mangowm/style.css ~/.config/mango/style.css
```

Lanzar manualmente para probar:
```bash
waybar -c ~/.config/mango/config.jsonc -s ~/.config/mango/style.css
```
---
## Keybinds principales
| Atajo | Acción |
|-------|--------|
| `ALT + Enter` | Abrir foot |
| `ALT + D` | Lanzador de wmenu |
| `ALT + Q` | Cerrar ventana |
| `ALT + R` | Recargar config |
| `ALT + SHIFT + F` | Abrir thunar |
| `ALT + SHIFT + R` | Recargar Waybar |
| `ALT + S` | Captura de pantalla |
| `ALT + T` | Toggle flotante |
| `ALT + F` | Toggle fullscreen |
| `ALT + N` | Ciclar layouts |
| `ALT + 0` | Toggle overview |
| `ALT + 1-9` | Cambiar tag |
| `ALT + Flechas` | Mover foco |
| `ALT + SHIFT + HJKL` | Intercambiar ventanas |
| `ALT + SHIFT + F` | Abrir Thunar |

---
## Ratón
| Atajo | Acción |
|-------|--------|
| `ALT + Click izquierdo` | Mover ventana flotante |
| `ALT + Click derecho` | Redimensionar ventana |

---
## Recargar todo
```bash
pkill mango ; mango
```

> [!tip]
> Para verificar errores en el config antes de lanzar: `mango -p`

---