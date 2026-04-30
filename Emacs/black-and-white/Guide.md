# Replication guide
---
### Dependencies
## Pacman
```bash
sudo pacman -S emacs-wayland git adobe-source-code-pro-fonts
```
Reload the font cache with `fc-cache -fv`.
### Clone spacemacs and dotfiles
```bash
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
git clone --depth=1 https://github.com/Flaxtrux/dotfiles.git ~/dotfiles
```
---
## Apply the theme
```bash
mkdir -p ~/.emacs.d/private/themes
cp ~/dotfiles/Emacs/black-and-white/black-and-white-theme.el ~/.emacs.d/private/themes/
```
Launch Emacs and let spacemacs install, after that copy the .spacemacs file into place.
```bash
cp ~/dotfiles/Emacs/black-and-white/.spacemacs ~/.spacemacs
```
Launch and use!
