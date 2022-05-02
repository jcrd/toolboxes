base := registry.fedoraproject.org/fedora-toolbox:35
images := toolbox \
	python-toolbox \
	shell-toolbox \
	golang-toolbox \
	lua-toolbox \
	javascript-toolbox \
	ansible-toolbox \
	ebook-toolbox \
	hugo-toolbox \
	alien-toolbox

all: pull-base $(images)

pull-base:
	podman pull $(base)

toolbox-rmi:
	toolbox rmi --all --force

refresh: toolbox-rmi clean all

toolbox: Dockerfile
	./scripts/build.sh $@ $<

python-toolbox: Dockerfile.python toolbox
	./scripts/build.sh $@ $<

shell-toolbox: Dockerfile.shell toolbox
	./scripts/build.sh $@ $<

golang-toolbox: Dockerfile.golang toolbox
	./scripts/build.sh $@ $<

lua-toolbox: Dockerfile.lua toolbox
	./scripts/build.sh $@ $<

javascript-toolbox: Dockerfile.javascript toolbox
	./scripts/build.sh $@ $<

ansible-toolbox: Dockerfile.ansible toolbox
	./scripts/build.sh $@ $<

ebook-toolbox: Dockerfile.ebook toolbox
	./scripts/build.sh $@ $<

hugo-toolbox: Dockerfile.hugo toolbox
	./scripts/build.sh $@ $<

alien-toolbox: Dockerfile.alien toolbox
	./scripts/build.sh $@ $<

clean:
	./scripts/clean.sh $(images)

.PHONY: $(images) all pull-base toolbox-rmi refresh clean
