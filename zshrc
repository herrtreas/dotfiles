export GOPATH=$HOME/Coding

eval "$(fasd --init auto)"

## GCloud
export PATH=/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin:$PATH

# GO
export GOPATH=$HOME/Coding
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin:/usr/local/opt/go/libexec/bin
export PATH="/usr/local/opt/ruby/bin:$PATH"

# Fasd
eval "$(fasd --init auto)"

## Tools
alias d='docker'
alias dc='docker-compose'
alias k='kubectl'
alias kx='kubectx'
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

antigen apply

# History Configuration
HISTSIZE=5000                                 #How many lines of history to keep in memory
HISTFILE=~/Documents/Dotfiles/zsh_history     #Where to save history to disk
SAVEHIST=5000                                 #Number of history entries to save to disk
HISTDUP=erase                                 #Erase duplicates in the history file
setopt    appendhistory                       #Append history to the history file (no overwriting)
setopt    sharehistory                        #Share history across terminals
setopt    incappendhistory                    #Immediately append to the history file, not just when a term is killed

