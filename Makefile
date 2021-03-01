images := toolbox \
	python-toolbox \
	shell-toolbox \
	golang-toolbox \
	lua-toolbox \
	ansible-toolbox \
	ebook-toolbox

all: $(images)

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

ansible-toolbox: Dockerfile.ansible toolbox
	./scripts/build.sh $@ $<

ebook-toolbox: Dockerfile.ebook toolbox
	./scripts/build.sh $@ $<

clean:
	./scripts/clean.sh $(images)

.PHONY: $(images) all clean
