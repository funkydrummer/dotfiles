# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="honukai"
ZSH_THEME="mh"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git bundler brew gem alias-tips)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
source $HOME/.aliases

# Bindings
## dd, b, w etc. in shell
bindkey -v
## ESC -> jk
bindkey -M viins 'jk' vi-cmd-mode
bindkey '^R' history-incremental-search-backward

# Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Silver searcher
alias ag='ag --path-to-agignore ~/.agignore'

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export EDITOR=vim

# Path
## Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

## Scripts
export PATH="$PATH:~/scripts"

# Python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
# Fix Python: https://stackoverflow.com/a/58445755/1590134
export DYLD_LIBRARY_PATH=/usr/local/opt/openssl/lib:$DYLD_LIBRARY_PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/mc mc

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Experimental
# http://stackoverflow.com/questions/4461346/slow-rails-stack
# export RUBY_GC_HEAP_INIT_SLOTS=800000
# export RUBY_HEAP_FREE_MIN=100000
# export RUBY_HEAP_SLOTS_INCREMENT=300000
# export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
# export RUBY_GC_MALLOC_LIMIT=79000000

# export DISABLE_SPRING=true
# export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# Rails stuff
# export RUBYOPT='-W:no-deprecated -W:no-experimental'
export RAILS_LOG_TO_STDOUT=1

# direnv
# eval "$(direnv hook zsh)"