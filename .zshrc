export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  

export ZSH="/home/msr/.oh-my-zsh"

export PYTHON="/usr/bin/python"

ZSH_THEME="robbyrussell"

plugins=(git yarn zsh-interactive-cd gitfast gatsby)

source $ZSH/oh-my-zsh.sh

# Setup linuxbrew
echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> /home/msr/.zprofile
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# Run tmux on startup
tmux


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
