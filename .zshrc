#
# ~/.zshrc
#

#
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#

### Lazyman configuration
#
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# Source the Lazyman shell initialization for aliases and nvims selector
# shellcheck source=.config/nvim-Lazyman/.lazymanrc
# [ -f ~/.config/nvim-Lazyman/.lazymanrc ] && source ~/.config/nvim-Lazyman/.lazymanrc
# Source the Lazyman .nvimsbind for nvims key binding
# shellcheck source=.config/nvim-Lazyman/.nvimsbind
# [ -f ~/.config/nvim-Lazyman/.nvimsbind ] && source ~/.config/nvim-Lazyman/.nvimsbind
#
### End Lazyman configuration

#
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#

### Personal lines configuration
#
## fastfetch
fastfetch
#
## fortune & cowsay
fortune 95% ru 5% en | cowsay -f eyes
#
## From https://github.com/CachyOS/cachyos-zsh-config
# source ~/.cachyos-zsh-config/cachyos-config.zsh
#
### End personal lines configuration

#
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#

### Powerlevel10k
source ~/.config/zsh/Powerlevel10k/.zshrc

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

### Starship
# source ~/.config/zsh/Starship/.zshrc

#
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#

### Lines configured by zsh-newuser-install
#
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
#
### End of lines configured by zsh-newuser-install

#
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#

### Lines carried over from /usr/share/oh-my-zsh/zshrc
#
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
#
# Path to your oh-my-zsh installation.
export ZSH="/usr/share/oh-my-zsh"
#
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="agnoster"
#
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
#
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
#
# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"
#
# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time
#
# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13
#
# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"
#
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
#
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"
#
# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"
#
# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"
#
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
#
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"
#
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
#
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(colorize docker docker-compose extract fzf gh git gitignore npm sudo z zsh-vi-mode)
#
### End lines carried over from /usr/share/oh-my-zsh/zshrc

#
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi
#
source $ZSH/oh-my-zsh.sh

#
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#

### The following lines were added by compinstall
#
zstyle :compinstall filename '~/.zshrc'
#
autoload -Uz compinit
compinit
#
### End of lines added by compinstall

#
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#

### User configuration
#
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#
# export MANPATH="/usr/local/man:$MANPATH"
#
# You may need to manually set your language environment
# export LANG=en_US.UTF-8
#
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='nvim'
#
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
#

# Ignore commands that start with spaces and duplicates.

export HISTCONTROL=ignoreboth

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Don't add certain commands to the history file.

export HISTIGNORE="&:[bf]g:c:clear:history:exit:q:pwd:* --help"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Use custom `less` colors for `man` pages.

export LESS_TERMCAP_md="$(tput bold 2> /dev/null; tput setaf 2 2> /dev/null)"
export LESS_TERMCAP_me="$(tput sgr0 2> /dev/null)"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Make new shells get the history lines from all previous
# shells instead of the default "last window closed" history.

export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

## Alias from https://github.com/CachyOS/cachyos-zsh-config
#
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
#alias open="xdg-open"
alias make="make -j`nproc`"
alias ninja="ninja -j`nproc`"
alias n="ninja"
alias c="clear"
alias rmpkg="sudo pacman -Rsn"
alias cleanch="sudo pacman -Scc"
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias update="sudo pacman -Syu"

# Help people new to Arch
alias apt="man pacman"
alias apt-get="man pacman"
alias please="sudo"
alias tb="nc termbin.com 9999"

# Cleanup orphaned packages
alias cleanup="sudo pacman -Rsn $(pacman -Qtdq)"

# Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# Recent installed packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
#
## End alias from https://github.com/CachyOS/cachyos-zsh-config

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

## User aliases
#
# Extracts the archive file
alias ext="extract"
#
# eza - A modern, maintained replacement for ls
if [ -x "$(command -v eza)" ]; then
    # alias ls="eza"
    alias ls="eza --tree --level=1 --icons=always --no-time --no-user --no-permissions"
    # alias la="eza --long --all --group"
    alias la="eza --tree --level=1 --icons=always --long --all --group"
fi
#
# bat - A cat(1) clone with wings.
alias cat="bat"
#
# duf - Disk Usage/Free Utility - a better 'df' alternative
alias df="duf"
#
# dust - A more intuitive version of du in Rust
alias du="dust"
# tldr - Collaborative cheatsheets for console commands ('man' alternative)
alias man="tldr"
#
# fd - Simple, fast and user-friendly alternative to find
alias find="fd"
#
# Neovim - hyperextensible Vim-based text editor
# Switching Configs in Neovim
alias v='nvim' # default Neovim config
alias vk='NVIM_APPNAME=nvim-kickstart nvim' # kickstart.nvim
alias vz='NVIM_APPNAME=nvim-lazyvim nvim' # LazyVim
alias vc='NVIM_APPNAME=nvim-nvchad nvim' # NvChad
alias va='NVIM_APPNAME=nvim-astrovim nvim' # AstroVim
alias vn='NVIM_APPNAME=nvim-normalnvim nvim' # NormalNvim
alias vl='lvim' # LunarVim
#
alias kickstart='NVIM_APPNAME=nvim-kickstart nvim' # kickstart.nvim
alias lazyvim='NVIM_APPNAME=nvim-lazyvim nvim' # LazyVim
alias nvchad='NVIM_APPNAME=nvim-nvchad nvim' # NvChad
alias astrovim='NVIM_APPNAME=nvim-astrovim nvim' # AstroVim
alias normalnvim='NVIM_APPNAME=nvim-normalnvim nvim' # NormalNvim
alias lunarvim='lvim' # LunarVim
#
# Neovide - No Nonsense Neovim Client in Rust
# # Switching Configs in Neovide
alias neovide-astrovim='NVIM_APPNAME=nvim-astrovim neovide' # Neovide-AstroVim
## End user aliases

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Use select to list your configs so you can choose one
sv() {
  select config in astrovim kickstart lazyvim nvchad
  do NVIM_APPNAME=nvim-$config nvim $@; break; done
}
#
# Use fzf to list your configs so you can choose one
vv() {
  # Assumes all configs exist in directories named ~/.config/nvim-*
  local config=$(fd --max-depth 1 --glob 'nvim-*' ~/.config | fzf --prompt="Neovim Configs > " --height=~50% --layout=reverse --border --exit-0)

  # If I exit fzf without selecting a config, don't open Neovim
  [[ -z $config ]] && echo "No config selected" && return

  # Open Neovim with the selected config
  NVIM_APPNAME=$(basename $config) nvim $@
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Find the file using fzf and open it in Neovim
alias ins='nvim $(fzf -m --preview="bat --theme=gruvbox-dark --color=always {}")'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# thefuck
eval $(thefuck --alias)
#
## yazi - Blazing fast terminal file manager written in Rust, based on async I/O.
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
#
## fzf
# export FZF_BASE="/usr/bin/"
# export FZF_BASE=/usr/share/fzf
export FZF_DEFAULT_COMMAND="fd"
DISABLE_FZF_AUTO_COMPLETION="false"
DISABLE_FZF_KEY_BINDINGS="false"
# Preview file content using bat (https://github.com/sharkdp/bat)
export FZF_CTRL_T_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"
#
## zoxide
eval "$(zoxide init zsh)"
#
## ruff
fpath+=~/.zfunc
autoload -Uz compinit && compinit
## uv
eval "$(uv generate-shell-completion zsh)"
## uvx
eval "$(uvx --generate-shell-completion zsh)"
#
## Added PATH
# ~/.local/bin
export PATH=~/.local/bin:$PATH
#
# cargo
export PATH=~/.cargo/bin:$PATH
#
### End User configuration

#
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#

# Fish-like syntax highlighting and autosuggestions
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Use history substring search
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# pkgfile "command not found" handler
source /usr/share/doc/pkgfile/command-not-found.zsh

#
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#
