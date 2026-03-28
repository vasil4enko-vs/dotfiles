# ~/.zshrc
#
# ----------------------------------------------------------------------
#
### Additional information applications
#
## fastfetch
fastfetch
#
## fortune & cowsay
fortune 95% ru 5% en | cowsay -f eyes
#
# ----------------------------------------------------------------------
#
### fzf-plugin from Oh My Zsh
#
# export FZF_BASE=/usr/share/fzf
export FZF_DEFAULT_COMMAND='fd --type file  --color=always --follow --hidden --exclude .git'
export DISABLE_FZF_AUTO_COMPLETION="false"
export DISABLE_FZF_KEY_BINDINGS="false"
# Preview file content using bat (https://github.com/sharkdp/bat)
export FZF_CTRL_T_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'bat --color=always --line-range=:500 {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"
#
### End fzf-plugin from Oh My Zsh
#
# ----------------------------------------------------------------------
#
### Plugin manager - sheldon
#
eval "$(sheldon source)"
#
### End Plugin manager - sheldon
#
# ----------------------------------------------------------------------
#
### History for zsh
#
## History file for zsh
HISTFILE=$HOME/.config/zsh/zsh_history
## How many commands to store in your memory for the current zsh session
HISTSIZE=12000
## How many commands to store in your history file
# shellcheck disable=SC2034
SAVEHIST=10000
## Write to the history file immediately, not when the shell exits
setopt INC_APPEND_HISTORY
## Expire duplicate entries first when trimming history
setopt HIST_EXPIRE_DUPS_FIRST
## Don't record an entry that was just recorded again.
setopt HIST_IGNORE_DUPS
## Delete old recorded entry if new entry is a duplicate.
setopt HIST_IGNORE_ALL_DUPS
## Don't record an entry starting with a space.
setopt HIST_IGNORE_SPACE
## Share history between all sessions
setopt SHARE_HISTORY
## Don't add certain commands to the history file
export HISTORY_IGNORE="(&|[bf]g|la|ls|pwd|cd|cd -|cd ..|z|z -|z ..|history|h|* --help|clear|c|exit|q)"
#
### End History for zsh
# ----------------------------------------------------------------------
#
### Use custom `less` colors for `man` pages
LESS_TERMCAP_md="$(
  tput bold 2>/dev/null
  tput setaf 2 2>/dev/null
)"
export LESS_TERMCAP_md
LESS_TERMCAP_me="$(tput sgr0 2>/dev/null)"
export LESS_TERMCAP_me
#
### End Use custom `less` colors for `man` pages
#
# ----------------------------------------------------------------------
#
### Starship prompt for any shell
#
eval "$(starship init zsh)"
#
### End Starship prompt for any shell
# ----------------------------------------------------------------------
#
### Using alias 'y' for Yazi and wrapper that provides the ability to change the current working directory when exiting Yazi.
#
function y() {
  local tmp cwd
  tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
  yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd <"$tmp"
  # [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
  [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd" || exit
  rm -f -- "$tmp"
}
#
### End Using alias 'y' for Yazi and wrapper that provides the ability to change the current working directory when exiting Yazi
#
# ----------------------------------------------------------------------
#
### zsh-patina - A blazingly fast ZSH syntax highlighter
#
eval "$(~/.cargo/bin/zsh-patina activate)"
#
### End zsh-patina - A blazingly fast ZSH syntax highlighter
#
# ----------------------------------------------------------------------
#
### Pay Respects - Command suggestions, command-not-found and thefuck replacement written in Rust
#
eval "$(pay-respects zsh --alias)"
#
### End Pay Respects - Command suggestions, command-not-found and thefuck replacement written in Rust
#
# ----------------------------------------------------------------------
#
### zoxide - a smarter cd command, inspired by z and autojump
#
eval "$(zoxide init zsh)"
#
### End zoxide - a smarter cd command, inspired by z and autojump
#
# ----------------------------------------------------------------------
#
### Autoload:
## - Enable Ruff autocompletion for Zsh
## - Enable ripgrep (rg) autocompletion for Zsh
#
fpath+=~/.zfunc
autoload -Uz compinit && compinit
#
### End Autoload
#
# ----------------------------------------------------------------------
#
### Enable  autocompletion for Zsh
#
## - for uv commands
eval "$(uv generate-shell-completion zsh)"
## - for uvx commands
eval "$(uvx --generate-shell-completion zsh)"
#
### End Enable  autocompletion for Zsh
#
# ----------------------------------------------------------------------
#
### Added PATH
#
## Command for testing $PATH:
# $ printf %s "$PATH"
#
## ~/.local/bin
export PATH=~/.local/bin:$PATH
#
## cargo
export PATH=~/.cargo/bin:$PATH
#
## npm
# export PATH=~/.npm-global/bin
#
## End Added PATH
#
# ----------------------------------------------------------------------
#
### Alias from https://github.com/CachyOS/cachyos-zsh-config - ZSH configuration for CachyOS  # (There are edits - vvs)
#
## Set personal aliases, overriding those provided by oh-my-zsh libs,
## plugins, and themes. Aliases can be placed here, though oh-my-zsh
## users are encouraged to define aliases within the ZSH_CUSTOM folder.
alias open="xdg-open"
alias make='make -j$(nproc)'
alias ninja='ninja -j$(nproc)'
alias n="ninja"
alias h="history"
alias c="clear"
alias q="exit"
alias rmpkg="sudo pacman -Rsn"
alias cleanch="sudo pacman -Scc"
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias update="sudo pacman -Syu"

## Help people new to Arch
alias apt="man paru"
alias apt-get="man pacman"
alias please="sudo"
alias tb="nc termbin.com 9999"

## Cleanup orphaned packages
alias cleanup='sudo pacman -Rsn $(pacman -Qtdq)'

## Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

## Recent installed packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
#
### End Alias from https://github.com/CachyOS/cachyos-zsh-config - ZSH configuration for CachyOS
#
# ----------------------------------------------------------------------
#
### User aliases
#
# Extracts the archive file
alias ext="extract"
#
## eza - A modern, maintained replacement for ls
if [ -x "$(command -v eza)" ]; then
  # alias ls="eza"
  alias ls="eza --tree --level=1 --icons=always --no-time --no-user --no-permissions"
  # alias la="eza --long --all --group"
  alias la="eza --tree --level=1 --icons=always --long --all --group"
fi
#
## Find the file using fzf and open it in Neovim
alias ins='nvim $(fzf -m --preview="bat --theme=gruvbox-dark --color=always {}")'
#
## bat - A cat(1) clone with wings.
alias cat="bat"
#
## duf - Disk Usage/Free Utility - a better 'df' alternative
alias df="duf"
#
## dust - A more intuitive version of du in Rust
alias du="dust"
## tldr - Collaborative cheatsheets for console commands ('man' alternative)
# alias man="tldr"
#
## fd - Simple, fast and user-friendly alternative to find
# alias find="fd"
#
## Neovim - hyperextensible Vim-based text editor
# Switching Configs in Neovim
alias v='nvim --clean'                       # default Neovim config
alias va='NVIM_APPNAME=nvim-astrovim nvim'   # AstroVim
alias vk='NVIM_APPNAME=nvim-kickstart nvim'  # kickstart.nvim
alias vz='NVIM_APPNAME=nvim-lazyvim nvim'    # LazyVim
alias vzx='NVIM_APPNAME=nvim-lazyvimx nvim'  # LazyVimx
alias vn='NVIM_APPNAME=nvim-normalnvim nvim' # NormalNvim
alias vc='NVIM_APPNAME=nvim-nvchad nvim'     # NvChad
#
alias astrovim='NVIM_APPNAME=nvim-astrovim nvim'     # AstroVim
alias kickstart='NVIM_APPNAME=nvim-kickstart nvim'   # kickstart.nvim
alias lazyvim='NVIM_APPNAME=nvim-lazyvim nvim'       # LazyVim
alias lazyvimx='NVIM_APPNAME=nvim-lazyvimx nvim'     # LazyVimx
alias normalnvim='NVIM_APPNAME=nvim-normalnvim nvim' # NormalNvim
alias nvchad='NVIM_APPNAME=nvim-nvchad nvim'         # NvChad
#
## Neovide - No Nonsense Neovim Client in Rust
# Switching Configs in Neovide
alias nva='NVIM_APPNAME=nvim-astrovim neovide' # AstroVim
#
alias neovide-astrovim='NVIM_APPNAME=nvim-astrovim neovide' # Neovide-AstroVim
#
## End User aliases
#
# ----------------------------------------------------------------------
#
### Use select to list your configs so you can choose one
sv() {
  select config in astrovim kickstart lazyvim lazyvimx normalnvim nvchad qt; do
    NVIM_APPNAME=nvim-$config nvim "$@"
    break
  done
}
#
### End Use select to list your configs so you can choose one
#
# ----------------------------------------------------------------------
#
### Use fzf to list your configs so you can choose one
vv() {
  # Assumes all configs exist in directories named ~/.config/nvim-*
  local config
  config=$(fd --max-depth 1 --glob 'nvim-*' ~/.config | fzf --prompt="Neovim Configs > " --height=~50% --layout=reverse --border --exit-0)

  # If I exit fzf without selecting a config, don't open Neovim
  [[ -z $config ]] && echo "No config selected" && return

  # Open Neovim with the selected config
  NVIM_APPNAME=$(basename "$config") nvim "$@"
}
### End Use fzf to list your configs so you can choose one
#
## ----------------------------------------------------------------------
