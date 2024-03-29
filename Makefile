
# default
run_zsh:
	zsh -lc ". ./main.sh"

# watch / develop
d: dev
dev: watch
watch_dotfiles:
	@watchexec -c -r -w ./main.sh -w ~/.dotfiles -w Makefile -- make dev_pipeline
watch:
	@watchexec -c -r -w ./main.sh -w Makefile -- make dev_pipeline
dev_pipeline: run_zsh

# good for argocd multi cluster scripts
# where you export functions
run_bash:
	bash -lc ". ./main.sh"

