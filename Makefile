all: pull-base build

pull-base:
	./scripts/pull_base.sh Dockerfile

build:
	./scripts/build.sh . $(name)

toolbox-rmi:
	toolbox rmi --all --force

refresh: toolbox-rmi clean all

clean:
	./scripts/clean.sh . $(name)

.PHONY: all pull-base build toolbox-rmi refresh clean
