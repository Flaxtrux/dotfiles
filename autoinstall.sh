#!/bin/bash
ROJO=$'\e[31m'
VERDE=$'\e[32m'
AMARILLO=$'\e[33m'
CIAN=$'\e[36m'
NEGRITA=$'\e[1m'
NC=$'\e[0m'
if [ "$EUID" -eq 0 ]; then
    echo "${ROJO}No ejecutes este script como root (ni con sudo).${NC}"
    exit 1
fi
if [ ! -f /etc/arch-release ]; then
    echo "${ROJO}Este script es solo para Arch Linux.${NC}"
    exit 2
fi
if command -v yay >/dev/null; then
    AUR=yay
elif command -v paru >/dev/null; then
    AUR=paru
else
    AUR=""
fi
echo "${AMARILLO}AVISO: ejecuta este script una sola vez.${NC}"
Emacs_Installer() {
    echo "${CIAN}${NEGRITA}==> Instalando Emacs${NC}"
    sudo pacman -S --needed emacs-wayland git adobe-source-code-pro-fonts tinymist
    if [ -n "$AUR" ]; then
        "$AUR" -S --needed powershell-bin
    else
        echo "${AMARILLO}AVISO: no hay yay ni paru, se omite powershell-bin (AUR). Instálalo a mano si lo necesitas.${NC}"
    fi
    mv ~/.emacs.d ~/.emacs.d.bak 2>/dev/null
    mv ~/.spacemacs ~/.spacemacs.bak 2>/dev/null
    git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
    mkdir -p ~/.emacs.d/private/themes
    cp "$ruta/Emacs/black-and-white/black-and-white-theme.el" ~/.emacs.d/private/themes/
    cp "$ruta/Emacs/black-and-white/.spacemacs" ~/.spacemacs
    echo "${AMARILLO}Emacs: abre Emacs y espera a que Spacemacs termine de instalar los paquetes.${NC}"
}
Zsh_Installer() {
    echo "${CIAN}${NEGRITA}==> Instalando zsh${NC}"
    sudo pacman -S --needed zsh git curl bat eza fastfetch ttf-jetbrains-mono-nerd ripgrep fd dust duf
    RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-completions.git ~/.oh-my-zsh/custom/plugins/zsh-completions
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
    cp "$ruta/zsh/.zshrc" ~/.zshrc
    cp "$ruta/zsh/.p10k.zsh" ~/.p10k.zsh
    chsh -s "$(which zsh)"
}
Nvim_Installer() {
    echo "${CIAN}${NEGRITA}==> Instalando nvim${NC}"
    sudo pacman -S --needed neovim git ripgrep fd ttf-jetbrains-mono-nerd
    mv ~/.config/nvim ~/.config/nvim.bak 2>/dev/null
    mv ~/.local/share/nvim ~/.local/share/nvim.bak 2>/dev/null
    git clone https://github.com/LazyVim/starter ~/.config/nvim
    rm -rf ~/.config/nvim/.git
    mkdir -p ~/.config/nvim/colors
    mkdir -p ~/.config/nvim/lua/plugins
    cp "$ruta/nvim/monochrome/colorscheme.lua" ~/.config/nvim/colors/colorscheme.lua
    cp "$ruta/nvim/monochrome/theme.lua" ~/.config/nvim/lua/plugins/theme.lua
}
Fastfetch_Installer() {
    echo "${CIAN}${NEGRITA}==> Instalando fastfetch${NC}"
    sudo pacman -S --needed fastfetch
    mkdir -p ~/.config/fastfetch ~/Documents/scripts
    cp "$ruta/fastfetch/omarchy_lookalike.jsonc" ~/.config/fastfetch/config.jsonc
    cp "$ruta/fastfetch/froakie.txt" ~/.config/fastfetch/froakie.txt
}
CLI_Installer() {
    echo "${CIAN}${NEGRITA}==> Instalando command line utils${NC}"
    sudo pacman -S --needed fzf direnv ripgrep fd tealdeer lazygit zellij yazi dust duf just lazydocker
}
preguntar() {
    read -r -p "${CIAN}$1 (s/n): ${NC}" respuesta
    [[ "$respuesta" =~ ^[sS]$ ]]
}
echo "${NEGRITA}Este es el script de autoinstalación de dotfiles de este repositorio, por favor introduzca la ruta del directorio en el que tiene almacenado este.${NC}"
read -r ruta
ruta="${ruta/#\~/$HOME}"
if [ ! -d "$ruta" ]; then
    echo "${ROJO}La ruta $ruta no existe.${NC}"
    exit 3
fi
echo "${NEGRITA}Ahora introduzca una de las siguientes opciones para elegir que instalar: ${NC}"
echo "${CIAN}1.${NC} Instalar herramientas funcionales (Emacs, zsh, nvim, command line utils)."
echo "${CIAN}2.${NC} Instalar todas las herramientas (Emacs, zsh, nvim, command line utils, fastfetch)."
echo "${CIAN}3.${NC} Seleccionar herramientas a instalar."
echo "${CIAN}4.${NC} Salir."
read -r opcion
case $opcion in
    1)
        Emacs_Installer
        Zsh_Installer
        Nvim_Installer
        CLI_Installer
        ;;
    2)
        Emacs_Installer
        Zsh_Installer
        Nvim_Installer
        CLI_Installer
        Fastfetch_Installer
        ;;
    3)
        preguntar "¿Instalar Emacs?" && Emacs_Installer
        preguntar "¿Instalar zsh?" && Zsh_Installer
        preguntar "¿Instalar nvim?" && Nvim_Installer
        preguntar "¿Instalar command line utils?" && CLI_Installer
        preguntar "¿Instalar fastfetch?" && Fastfetch_Installer
        ;;
    4)
        echo "${CIAN}Saliendo.${NC}"
        exit 0
        ;;
    *)
        echo "${ROJO}Opción no válida.${NC}"
        exit 4
        ;;
esac
echo "${VERDE}${NEGRITA}La ejecución ha finalizado.${NC}"
