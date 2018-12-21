export GOPATH=$HOME/Coding

eval "$(fasd --init auto)"

## GCloud
export PATH=/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin:$PATH

# GO
export GOPATH=$HOME/Coding
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin:/usr/local/opt/go/libexec/bin

# Fasd
eval "$(fasd --init auto)"

## Tools
alias d='docker'
alias dc='docker-compose'
alias k='kubectl'
alias g='gcloud'
alias vim='nvim'
alias v='vim'

autoload colors zsh/terminfo
colors

precmd() { print "" }
PS1="⟩ "
RPS1="%{$fg[magenta]%}%20<...<%~%<<%{$reset_color%}"

if [ "$TMUX" = "" ]; then tmux; fi

setopt auto_cd
setopt correctall
alias git status='nocorrect git status'

source /usr/local/share/antigen/antigen.zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle git

