export ZSH="$HOME/.oh-my-zsh"
export TERM=xterm-256color
export SUDO_EDITOR="nvim"
export SUDO_PROMPT="$(tput setaf 1 bold)Password:$(tput sgr0) "

alias vi="nvim"
alias cd="z"
alias copy="xclip -selection clipboard"
alias cp="cp -iv"
alias zathura="devour zathura"
alias mpv="devour mpv"
alias feh="devour feh"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-vim-mode zsh-system-clipboard zsh-fzf-history-search)

source $ZSH/oh-my-zsh.sh


# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

autoload -U compinit; compinit
source ~/.fzf/fzf-tab.plugin.zsh

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'


neofetch
eval "$(pyenv init -)"

eval "$(zoxide init zsh)"
eval "$(pyenv virtualenv-init -)"
eval "$(starship init zsh)"
alias ls="exa -l --icons"

