## Introdution
This project is originally intended for storing my Neovim configuration files. However, since the configuration process requires several additional dependencies, this project will also include some configuration-related information beyond Neovim.

## Replace domestic sources(Optional)
can ref [https://zhuanlan.zhihu.com/p/61228593]

## Install ZSH
You need to set peoxy(You can find 'HOSTIP and PORT' in the LAN option in 'clash for windows') :
```sh
export ALL_PROXY="198.18.0.1:7890"
```
download zsh
```sh
sudo pacman -S zsh
sudo apt install zsh
```

install oh-my-zsh
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 
```

install powerlevel10k
``` sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k 
```

zsh plugin
```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
Finally, you should modify `~/.zshrc`

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
if you need `curl: (60)ssl`, you can try:
```bash
sudo vim /home/linuxbrew/.linuxbrew/Homebrew/Library/Homebrew/utils/curl.rb
```
add `'-k'` to `args=[]`
`brew install --force gcc` can help you

## lua and go

download go for [https://go.dev/dl/]

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

5. install neovim
``` sh
brew install neovim
sudo add-apt-repository ppa:neovim-ppa/stable
```






9. install lazygit
```sh 
brew install jesseduffield/lazygit/lazygit
```

