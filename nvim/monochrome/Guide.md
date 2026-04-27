# Dependencies
```bash
pacman -S ttf-jetbrains-mono-nerd nvim git
git clone --depth=1 https://github.com/Flaxtrux/dotfiles.git ~/dotfiles
```
## Install LazyVim
```bash
mv ~/.config/nvim ~/.config/nvim.bak 2>/dev/null
mv ~/.local/share/nvim ~/.local/share/nvim.bak 2>/dev/null
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
```
# Apply the theme
```bash
mkdir -p ~/.config/nvim/colors
mkdir -p ~/.config/nvim/lua/plugins
cp ~/dotfiles/nvim/monochrome/colorscheme.lua ~/.config/nvim/colors/colorscheme.lua
cp ~/dotfiles/nvim/monochrome/theme.lua ~/.config/nvim/lua/plugins/theme.lua
```
Next time you open Neovim the theme will apply.