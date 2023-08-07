# ----------------------------------------
# ----------------------------------------
# ----------------INIT--------------------
# ----------------------------------------
# ----------------------------------------
eval "$(starship init zsh)"
export ALL_PROXY="198.18.0.1:7890"



# ----------------------------------------
# ----------------------------------------
# ----------------PATH--------------------
# ----------------------------------------
# ----------------------------------------
export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin
export PATH=$PATH:/usr/local/go/bin
export PATH="$HOME/.local/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



# ----------------------------------------
# ----------------------------------------
# --------------PLUGIN--------------------
# ----------------------------------------
# ----------------------------------------
# THE FUCK
eval $(thefuck --alias)
# eval $(thefuck --alias --enable-experimental-instant-mode)
# You can use whatever you want as an alias, like for Mondays:
# eval $(thefuck --alias FUCK)

# THE AUTOSUGGESTIONS
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# THE HIGHLIGHTING
source /home/ymq/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# EXA
alias ls="exa"
alias ll="exa -l"

# Z
eval "$(zoxide init zsh)"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# lazygit
alias lg="lazygit"

# nvim
alias vim="nvim"
alias nv="nvim"
