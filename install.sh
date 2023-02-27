#!/usr/bin/env bash

function install_oh_my_zsh() {

    if [ -d ~/.oh-my-zsh ]; then
        echo "Oh My Zsh is already installed, installing customizations..."
        install_plugins
    else
        sudo -u $USER zsh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed -e 's/read -r opt$/opt="y"/' -e '/exec zsh -l/d')"
    fi

}

function install_plugins() {
    echo "Changing theme to Arrow and installing zsh-autosuggestion..."
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions)/' ~/.zshrc
    sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="arrow"/' ~/.zshrc
    exec zsh
}

if dpkg-query -W -f='${Status}' zsh | grep "ok installed"; then
    echo "Installing customizations..."
    install_oh_my_zsh
    install_plugins


else
    echo "ERROR: In order to install oh-my-zsh, zsh must be present and be the default shell."
fi
