
# watch / develop
d: dev
dev: watch
watch_dotfiles:
	@watchexec -cr -w ./main.sh -w ~/.dotfiles -w Makefile -- make dev_pipeline
watch:
	@watchexec -cr -w ./main.sh -w Makefile -- make dev_pipeline
dev_pipeline: run_bash

# good for argocd multi cluster scripts
# where you export functions
run_bash:
	bash -lc ". ./main.sh"

# try to use this as default
run_zsh:
	bash -lc ". ./main.sh"
