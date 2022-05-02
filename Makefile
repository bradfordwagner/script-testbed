run:
	./test.sh

# watch / develop
dev_pipeline: run
watch:
	@watchexec -cr -w ./test.sh -w Makefile -- make dev_pipeline
dev: watch
d: dev

