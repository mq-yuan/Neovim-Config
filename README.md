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
export all=http://$HOST:$PORT
```

5. install neovim
``` sh
brew install neovim
```

6. install lazygit
```sh 
brew install jesseduffield/lazygit/lazygit
```

