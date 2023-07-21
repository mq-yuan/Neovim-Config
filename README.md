## Introdution
This project is originally intended for storing my Neovim configuration files. However, since the configuration process requires several additional dependencies, this project will also include some configuration-related information beyond Neovim.

## Need
1. download zsh
```sh
pacman -S zsh 
```

2. install oh-my-zsh
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 
```

3. install powerlevel10k
``` sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k 
```

4. install Homebre
``` sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 
export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin
export all_proxy=sock5://$HOST:$PORT
```
if you need `curl: (60)ssl`, you can try:
```bash
sudo vim /home/linuxbrew/.linuxbrew/Homebrew/Library/Homebrew/utils/curl.rb
```
add `'-k'` to `args=[]`

5. install neovim
``` sh
brew install neovim
sudo add-apt-repository ppa:neovim-ppa/stable
```

6. zsh plugin
```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

7. nodejs
```sh
wget -qO- --no-check-certificate  https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
```
add to ~/.zshrc
``` sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
```
```sh
nvm install --lts
```
if  ```Version '' (with LTS filter) not found - try `nvm ls-remote --lts` to browse available versions``` you can do that
create `~/.curlrc`, add one line `-k`, then `nvm install --lts`

8. go

9. install lazygit
```sh 
brew install jesseduffield/lazygit/lazygit
```
11. lua

