# Dependencies
```bash
pacman -S git zsh curl tree bat eza
git clone --depth=1 https://github.com/Flaxtrux/dotfiles.git ~/dotfiles
```
##  Install Oh my zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
## Plugins
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions.git \
  ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
  ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-completions.git \
  ~/.oh-my-zsh/custom/plugins/zsh-completions
```
## p10k
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/.oh-my-zsh/custom}/themes/powerlevel10k
```
# .zshrc
```bash
cp ~/dotfiles/zsh/.zshrc ~/.zshrc
```