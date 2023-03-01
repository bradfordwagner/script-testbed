
# watch / develop
d: dev
dev: watch
watch_dotfiles:
	@watchexec -cr -w ./main.sh -w ~/.dotfiles -w Makefile -- make dev_pipeline
watch:
	@watchexec -cr -w ./main.sh -w Makefile -- make dev_pipeline
dev_pipeline: run

run:
	zsh -lc ". ./main.sh"
