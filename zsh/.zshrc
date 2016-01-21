# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# source ~/.bin/tmuxinator.zsh
export EDITOR=/usr/local/bin/vim  
export VISUAL=/usr/local/bin/vim  
export TERM="xterm-256color"
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

 #Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pure"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin"

fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

# Aliases
alias z.c="vim ~/.zshrc"
alias s.c="mux start scotch"
alias v.c="vim ~/.vimrc"
alias t.c="vim ~/.tmux.conf"
alias z.r=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
alias t.r="tmux source-file ~/.tmux.conf"
alias perm.file="sudo chown -R kelvinakposoe:admin"
alias perm.all="sudo chown -R kelvinakposoe:admin *"
alias c="clear"
alias remove="sudo rm -rf"
alias ex="exit"
alias x="exit"
alias f-"ag -g "" | fzf -m | pbcopy"
alias oldf="fzf -m | pbcopy"
alias dotfiles="cd ~/.dotfiles"
alias sites="~/Sites/"
alias oldvim="/usr/local/bin/vim"
alias o="/usr/local/bin/vim"

# Homestead Shortcuts
alias h="sudo ~/.composer/vendor/bin/homestead up"
alias h.up="sudo ~/.composer/vendor/bin/homestead up"
alias h.stop="sudo ~/.composer/vendor/bin/homestead halt"
alias h.c="sudo vim ~/.homestead/homestead.yaml"
alias hostsconfig="sudo vim /etc/hosts"

# Laravel Commands
alias composer="sudo composer"
alias pha="sudo php artisan"
alias laravel="sudo ~/.composer/vendor/bin/laravel"
alias lv="~/Sites/lara_projects"
alias lv.goodcv="lv && goodcv/public"

# Scotch Box Start & Stop
alias s.up="~/Sites/wp_projects/ && sudo vagrant up"
alias s.stop="~/Sites/wp_projects/ && sudo vagrant suspend"
alias s.refresh="~/Sites/wp_projects/ && sudo vagrant provision"

# Gulp
alias g="sudo gulp"
alias g.install

# Tmux & Tmuxinator
alias t.n="tmux new -s"
alias t.k="tmux kill-session -t"
alias t.a="tmux a -t"
alias t.l="tmux ls"
alias develop="mux start wordpress"

# Git Commands
alias ga="sudo git add -A"
alias gs="sudo git status"
alias gm="sudo git commit -m"
alias gc="sudo git checkout"
alias gcb="sudo git checkout -b"
alias gb="sudo git branch"
alias gcl="sudo git clone"

# Wordpress Shortcuts
alias wsites="~/Sites/wp_projects"
alias ws="~/Sites/wp_projects"
alias ws.wordjar="ws && wordjar.dev/public"
alias ws.designofka="ws && designofka.dev/public"
alias theme="/wp-content/themes/"

# YCM Compile
alias ycm.compile="cd ~/.vim/plugged/YouCompleteMe && ./install.sh --clang-completer"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
