## Introdution
This project is originally intended for storing my Neovim configuration files. However, since the configuration process requires several additional dependencies, this project will also include some configuration-related information beyond Neovim.

## Install ZSH
You need to set peoxy(You can find 'HOSTIP and PORT' in the LAN option in 'clash for windows') :
```sh
export ALL_PROXY="198.18.0.1:7890"
```

**Install zsh**

```sh
sudo pacman -S zsh
```
OR
```sh
sudo apt install zsh
```

**Install starship**

If you want to learn more, [startship](https://starship.rs/) is all you need.
```sh
curl -sS https://starship.rs/install.sh | sh
```

Add the following to the end of `~/.zshrc`:
```sh
eval "$(starship init zsh)"
```

**Config theme**

[startship Presets](https://starship.rs/presets/) has many beautiful presets.

*A Nerd Font (opens new window)installed and enabled in your terminal(suggest [FiraCode Nerd Font Mono](https://www.nerdfonts.com/font-downloads)).*
```sh
starship preset tokyo-night -o ~/.config/starship.toml
```

**zsh plugin**

[top-popular-zsh-plugins](https://safjan.com/top-popular-zsh-plugins-on-github-2023/#frameworks) can help you find most popular plugin.

There are some plugins I like.

[thefuck](https://github.com/nvbn/thefuck)

On Ubuntu / Mint, install The Fuck with the following commands:
```sh
sudo apt update
sudo apt install python3-dev python3-pip python3-setuptools
pip3 install thefuck --user
```
Add the following to the end of `~/.zshrc`:
```sh
eval $(thefuck --alias)
```

[fzf](https://github.com/junegunn/fzf)

"git clone" this repository to any directory and run install script.
```sh
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

Git Clone is recommended Manual
```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
```
Add the following to your `.zshrc`:
```sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
```

[zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

Git Clone is recommended Manual
```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
```

[exa](https://github.com/ogham/exa)

Use the cargo install command:
```sh
cargo install exa
```
It is recommend to alias `exa` to `ls`
```sh
# Add  the following to your .zshrc
alias ls="exa"
alias ll="exa -l"
```

[zoxide](https://github.com/ajeetdsouza/zoxide)

Cargo is recommed:
```sh
cargo install zoxide --locked
```
OR via the install script:
```sh
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
```
Add this to the end of your config file (usually `~/.zshrc`):
```sh
eval "$(zoxide init zsh)"
```

## nodejs
download nvm 
```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
```
add to ~/.zshrc
``` sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
```
download nodejs
```sh
nvm install --lts
```
if  ```Version '' (with LTS filter) not found - try `nvm ls-remote --lts` to browse available versions``` you can do that
create `~/.curlrc`, add one line `-k`, then `nvm install --lts`

## Homebre(Optional)
install Homebre
``` sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 
export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin
```
`-k` and `--force` maybe can help you

## lua and go

[go](https://go.dev/dl/)

```sh
sudo  rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.20.6.linux-amd64.tar.gz
```
adding the following line to your $HOME/.profile
```sh
export PATH=$PATH:/usr/local/go/bin
```
Finally, run `source ~/.profile`

download `make`
```sh
sudo apt install build-essential
```
download `lua`
```sh
curl -R -O http://www.lua.org/ftp/lua-5.4.6.tar.gz
tar zxf lua-5.4.6.tar.gz
cd lua-5.4.6
make linux test
sudo make install
```

## Neovim

install neovim
``` sh
brew install neovim
```
OR
```sh
sudo add-apt-repository ppa:neovim-ppa/stable
```

install packer
```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

install lazygit
```sh 
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
```

Finally, git clone this repositories


## Optional

###  Replace domestic sources
Ref [https://zhuanlan.zhihu.com/p/61228593]

### Set language
If you are using wsl in China, maybe you will meet language question ` ERROR Locale dose not support UTF-8.`.

You can try these command to adjust your wsl language.
```
sudo locale-gen en_US.UTF-8
sudo update-locale LANG=en_US.UTF-8 LC_CTYPE=en_US.UTF-8
```
### Clipboard
When you are using wsl, you can add the following lines in 'init.lua'. 

The configuration is for setting up clipboard integration in Neovim to work between wsl and windows.

```
vim.g.clipboard = {
  name = 'WslClipboard',
  copy = {
    ['+'] = 'clip.exe',
    ['*'] = 'clip.exe',
  },
  paste = {
    ['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    ['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
  },
  cache_enabled = 0,
}
```
