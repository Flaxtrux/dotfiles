# Dependencies
```bash
sudo pacman -S fastfetch git ttf-jetbrains-mono-nerd
git clone https://github.com/Flaxtrux/dotfiles.git ~/dotfiles
```
# Apply the config
```bash
mkdir -p ~/.config/fastfetch ~/Documents/scripts
cp ~/dotfiles/fastfetch/omarchy_lookalike.jsonc ~/.config/fastfetch/config.jsonc
cp ~/dotfiles/fastfetch/froakie.txt ~/.config/fastfetch/froakie.txt
```
Run `fastfetch` to test it.
