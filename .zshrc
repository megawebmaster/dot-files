source /usr/share/zsh/share/antigen.zsh

antigen use oh-my-zsh

antigen bundles <<BUNDLES
	git
	ssh
	docker
	archlinux
	npm
	command-not-found
	zdharma/fast-syntax-highlighting
	zsh-users/zsh-autosuggestions@master
	zsh-users/zsh-history-substring-search
BUNDLES

antigen theme romkatv/powerlevel10k

antigen apply

# Git aliases
alias ggrh='git reset --hard origin/$(current_branch)'
alias gdc='git diff --cached'

# Setup DirEnv
eval "$(direnv hook zsh)"
_direnv_hook() {
  eval "$(direnv export zsh 2> >( egrep -v -e '^direnv: (loading|export|unloading)' ))"
};

# Setup env keys
source ~/.env_keys

# Setup aliases
alias cdrt='cd ~/Projects/retrotool.io'
alias cdb='cd ~/Projects/budget-receipts'

# DotFiles config
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Global variables
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)
POWERLEVEL9K_TIME_ICON=\\uF017

