## Introdution
This project is originally intended for storing my Neovim configuration files. However, since the configuration process requires several additional dependencies, this project will also include some configuration-related information beyond Neovim.

## Need
1. download neovim
2. download zsh
` pacman -S zsh `
3. install oh-my-zsh
` sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" `
4. install powerlevel10k
` git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k `
5. install Homebre
``` sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 
export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin
export all=http://$HOST:$PORT
```
6. install lazygit
`brew install jesseduffield/lazygit/lazygit`
