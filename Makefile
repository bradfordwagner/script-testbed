
# watch / develop
d: dev
dev: watch
watch:
	@watchexec -cr -w ./test.sh -w Makefile -- make dev_pipeline
dev_pipeline: run

run:
	./test.sh
