export ZSH=$HOME/.oh-my-zsh
export TERM="xterm-256color"
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
[ -f ~/.env.zsh ] && source ~/.env.zsh

ZSH_THEME="refined"

fpath+=("/usr/local/share/zsh/site-functions")

source ~/antigen.zsh

# antigen bundle git # Bundles from the default repo (robbyrussell's oh-my-zsh).

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle hlissner/zsh-autopair
antigen bundle andrewferrier/fzf-z
antigen bundle peterhurford/up.zsh
antigen bundle laurenkt/zsh-vimto

antigen apply # Tell Antigen that you're done.

plugins=(git zsh-completions zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

bindkey -v # Add Vim
bindkey '^ ' autosuggest-accept
export KEYTIMEOUT=1
bindkey '^\n' autosuggest-execute

# Aliases
[ -f ~/.aliases-additions.zsh ] && source ~/.aliases-additions.zsh
[ -f ~/.aliases.zsh ] && source ~/.aliases.zsh
[ -f ~/.env-aliases.zsh ] && source ~/.env-aliases.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="/home/kakposoe/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

source $(dirname $(gem which colorls))/tab_complete.sh

###-tns-completion-start-###
if [ -f "$HOME/.tnsrc" ]; then . source "$HOME/.tnsrc"; fi
###-tns-completion-end-###

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi
