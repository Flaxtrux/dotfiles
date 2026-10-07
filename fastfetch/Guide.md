# Dependencies
```bash
sudo pacman -S fastfetch git ttf-jetbrains-mono-nerd
git clone --depth=1 https://github.com/Flaxtrux/dotfiles.git ~/dotfiles
```
# Apply the config
```bash
mkdir -p ~/.config/fastfetch ~/Documents/scripts
cp ~/dotfiles/fastfetch/omarchy_lookalike.jsonc ~/.config/fastfetch/config.jsonc
cp ~/dotfiles/fastfetch/froakie.txt ~/Documents/scripts/froakie.txt
```
Run `fastfetch` to test it.
