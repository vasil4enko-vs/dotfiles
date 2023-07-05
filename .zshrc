#
# ~/.zshrc
#


### Personal lines configured
#
## fastfetch
fastfetch
#
## fortune & cowsay
fortune 95% ru 5% en | cowsay -f eyes
#
### End lines configured by vvs


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# From https://github.com/CachyOS/cachyos-zsh-config
source ~/.cachyos-config.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(colorize sudo gh gitignore pyenv poetry ruff docker docker-compose)



### Personal lines configured
#
## Pygments styles.
ZSH_COLORIZE_STYLE="colorful"
#
## thefuck
eval $(thefuck --alias)
#
## pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
#
## Personal aliases
# Extracts the archive file
alias ext="extract"
### End lines configured by vvs
