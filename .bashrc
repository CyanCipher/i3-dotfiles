#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='exa --icons -l'
alias grep='grep --color=auto'
alias llama='/home/cyan/Code/llama.cpp/build/bin/llama-cli'
alias vi='vim'
#source ~/.../bash/fzf-bash-completion.sh
#bind -x '"\t": fzf_bash_completion'
PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"
eval "$(zoxide init bash --cmd cd)"
export PATH="$HOME/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

grun () {
    g++ -c $1.cpp -o $1.o && g++ $1.o && ./a.out
}

# opencode
export PATH=/home/cyan/.opencode/bin:$PATH

# Instl.sh installer binary location
export PATH=/home/cyan/.local/bin:$PATH
export PATH=/home/cyan/.local/share/gem/ruby/3.4.0/bin:$PATH

[ -f "/home/cyan/.ghcup/env" ] && . "/home/cyan/.ghcup/env" # ghcup-env
