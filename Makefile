build: pull-base
	./scripts/build.sh . $(name)

pull-base:
	./scripts/pull_base.sh Dockerfile

toolbox-rmi:
	toolbox rmi --all --force

refresh: toolbox-rmi clean pull-base

clean:
	./scripts/clean.sh . $(name)

.PHONY: all pull-base build toolbox-rmi refresh clean
