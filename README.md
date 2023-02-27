# deploy-zsh-customizations

Are you tired of running the same commands over and over to load your `oh-my-zsh` customizations into your new installations?

If so, you are in the right place.

This tool with automatically install `oh-my-zsh` in a silent mode where there is no prompt to user and also it wont `exec zsh -l` after installation. This change allows you to add your own customizations and then start zsh with all the changes in one go.

In this particular case this script will add `zsh-autosuggestions` and change the theme to `Arrow`.

# Install

> Warning. You need to have ZSH installed before executing this script. This will be automated in a future update.

To run this script, simple clone it and run it. You may be prompted to enter your sudo password to install `oh-my-zsh`

```
git clone https://github.com/aerodiduch/deploy-zsh-customizations.git
```

```
chmod +x install.sh && ./install.sh
```

Enjoy!

