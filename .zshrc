# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
compinit
complete -C "/usr/local/bin/aws_completer" aws
# export NOTE="date +%d-%m-%Y"
## If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/poetry/bin/bin:$PATH
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH


# Path to your oh-my-zsh installation.
export ZSH="/home/$(whoami)/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="spaceship"
# ZSH_THEME="linuxonly"
ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="agnoster"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "bira" "nebirhos" "typewritten" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see "man strftime" for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    archlinux
    git
    vi-mode
    github
    tmuxinator
    python
    pyenv
    pip
    ansible
    docker
    docker-compose
    dotenv
    rust
    rustup
    vagrant
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh_reload
    zsh-interactive-cd
    aws
    ruby
    kubectl
)


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR="nvim"
else
  export EDITOR="vi"
fi

# export TERM="xterm-256-color"
# export TERM="screen-256color"
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#Example aliases

alias szsh="$EDITOR ~/.zshrc"
alias rzsh="exec $SHELL"
alias ls="ls --color=auto"
# alias update="sudo apt update && sudo apt upgrade -y && sudo snap refresh"
# alias note="haroopad & > /dev/null"
# time=´date +%Y-%m-%d-%H.%M´

alias note="$EDITOR ~/daily/$(date +%d-%m-%Y).md"
alias notebook="$EDITOR ~/Documents/notebooks"

# alias tx=tmuxinator
############################################################################### 
# config nvm / node
export NVM_DIR="$HOME/.nvm"

# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"


# This loads nvm bash_completion 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
    # eval "$(pyenv virtualenv-init -)"
fi

<<<<<<< Updated upstream
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

export POETRY_HOME="~/.poetry/bin"
export PATH="$HOME/POETRY_HOME:$PATH"
=======
# export POETRY="$HOME/.poetry/bin/bin"
# export PATH="$POETRY:$PATH"
export GEM_HOME="$HOME/gems"
export PATH="$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH"
>>>>>>> Stashed changes

# config cargo/rustup
export PATH="$HOME/.cargo/bin:$PATH"

# config default editor
export EDITOR="nvim"
export VISUAL="nvim"

# config Github
export GITHUB_TOKEN="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"

# config direnv
# eval "$(direnv hook zsh)"


#CONFIG RUST 
export PATH="$HOME/.cargo/bin:$PATH"

#CONFIG RUBY
RUBY_PATH="$HOME/.local/share/gem/ruby/3.0.0/bin"

export PATH="$RUBY_PATH:$PATH"
# CONFIG JAVA
# JAVA_HOME=/usr/lib/jvm/java-11-openjdk
# export JAVA_HOME
# export PATH=$PATH:$JAVA_HOME

# Plugin ohmyzsh TMUX
# export ZSH_TMUX_CONFIG="$HOME/.tmux.conf.local"
export ZSH_TMUX_AUTOSTART=true
export ZSH_TMUX_AUTOQUIT=true

# TP TELEFONE
export IP_PHONE="10.0.0.153"

# CONFIG ASDF
# export ASDF_CONFIG_FILE="~/.asdfrc"
# export ASDF_DEFAULT_TOOL_VERSIONS_FILENAME=".tool-versions"
# export ASDF_DATA_DIR="~/.asdf"

# cofig spaceship
# SPACESHIP_PROMPT_ORDER=(
#   time          # Time stamps section
#   user          # Username section
#   dir           # Current directory section
#   host          # Hostname section
#   git           # Git section (git_branch + git_status)
#   hg            # Mercurial section (hg_branch  + hg_status)
#   package       # Package version
#   node          # Node.js section
#   ruby          # Ruby section
#   elixir        # Elixir section
#   # xcode         # Xcode section
#   # swift         # Swift section
#   golang        # Go section
#   # php           # PHP section
#   rust          # Rust section
#   # haskell       # Haskell Stack section
#   # julia         # Julia section
#   docker        # Docker section
#   # aws           # Amazon Web Services section
#   venv          # virtualenv section
#   # conda         # conda virtualenv section
#   # pyenv         # Pyenv section
#   # dotnet        # .NET section
#   # ember         # Ember.js section
#   # kubectl       # Kubectl context section
#   # terraform     # Terraform workspace section
#   exec_time     # Execution time
#   line_sep      # Line break
#   # battery       # Battery level and status
#   vi_mode       # Vi-mode indicator
#   jobs          # Background jobs indicator
#   exit_code     # Exit code section
#   char          # Prompt character
# )

# SPACESHIP_USER_SHOW=always
# SPACESHIP_PROMPT_ADD_NEWLINE=true
# SPACESHIP_CHAR_SYMBOL="❯"
# SPACESHIP_CHAR_SUFFIX=" "

# # Themes typewritten
# export TYPEWRITTEN_PROMPT_LAYOUT="multiline" # singleline_verbose, multiline
# export TYPEWRITTEN_SYMBOL=">"          # any string value
# export TYPEWRITTEN_GIT_RELATIVE_PATH="false"           # true or false
# export TYPEWRITTEN_CURSOR="underscore"         # underscore, beam, block
# export TYPEWRITTEN_RIGHT_PROMPT_PREFIX=      # Any string

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet



# >>> conda initialize >>>
# !! Contents within this block are managed by "conda init" !!
__conda_setup="$("/home/dom/anaconda3/bin/conda" "shell.zsh" "hook" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/dom/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/dom/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/dom/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform