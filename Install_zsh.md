## Pimp Your Terminal
show note from youtube video ->

![term.jpg](term.jpg)

### ZSH installation and basic configurations

#### Install ZSH
```
sudo apt install zsh
```

#### Set zsh as default
```
chsh -s $(which zsh)
```

#### Show current shell
```
echo $SHELL
```

#### Install ohmyzsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### ZSH themes 

#### zsh default themes
https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

Edit `.zshrc`

ZSH_THEME="jonathan"

### Install required fonts

##### Nerd Font
https://www.nerdfonts.com/

https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraMono

download and install FiraMono for linux

##### Verify font
```
fc-match -f "%{family}\n" | head -n 1
```


### ZSH plugins

##### plugins include with ohmyzsh
https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins

Edit `.zshrc` to include plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

#### Must-Have plugins
```
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```

##### Install Powerlevel 10k
```
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```

Edit `.zshrc`

ZSH_THEME="powerlevel10k/powerlevel10k"

POWERLEVEL9K_MODE="nerdfont-complete"