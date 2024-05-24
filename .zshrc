export ZSH="$HOME/.oh-my-zsh"
export TERM=xterm-256color
export SUDO_EDITOR="nvim"
export SUDO_PROMPT="$(tput setaf 1 bold)Password:$(tput sgr0) "
export TINTED_TMUX_OPTION_ACTIVE=1

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
export FZF_DEFAULT_OPTS="
	--color=fg:#908caa,bg:#232136,hl:#ea9a97
	--color=fg+:#e0def4,bg+:#393552,hl+:#ea9a97
	--color=border:#44415a,header:#3e8fb0,gutter:#232136
	--color=spinner:#f6c177,info:#9ccfd8,separator:#44415a
	--color=pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa"

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

export PATH=/home/cyan/.pyenv/plugins/pyenv-virtualenv/shims:/home/cyan/.pyenv/shims:/home/cyan/.pyenv/bin:/sbin:/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/sbin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/usr/lib/rustup/bin:/home/cyan/.jiotv_go/bin:/home/cyan/.jiotv_go/bin

# bun completions
[ -s "/home/cyan/.bun/_bun" ] && source "/home/cyan/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.ghcup/bin:$PATH"
