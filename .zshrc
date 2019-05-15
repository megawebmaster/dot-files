source /usr/share/zsh/share/antigen.zsh

antigen use oh-my-zsh

antigen bundles <<BUNDLES
	git
	ssh
	docker
	archlinux
	npm
	rvm
	ruby
	command-not-found
	zdharma/fast-syntax-highlighting
	zsh-users/zsh-autosuggestions@master
	zsh-users/zsh-history-substring-search
BUNDLES

antigen theme romkatv/powerlevel10k

antigen apply

# Git aliases
alias ggrh='git reset --hard origin/$(current_branch)'

# Setup DirEnv
eval "$(direnv hook zsh)"
_direnv_hook() {
  eval "$(direnv export zsh 2> >( egrep -v -e '^direnv: (loading|export|unloading)' ))"
};

# Setup RVM
source /usr/share/rvm/scripts/rvm
source ~/.env_keys

# Global variables
SOCIALGUIDE_ENV_FILE=.test.local.env
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)
POWERLEVEL9K_TIME_ICON=\\uF017

