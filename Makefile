images := toolbox \
	python-toolbox \
	shell-toolbox \
	golang-toolbox \
	lua-toolbox

all: $(images)

toolbox: Dockerfile
	./build.sh $@ $<

python-toolbox: Dockerfile.python toolbox
	./build.sh $@ $<

shell-toolbox: Dockerfile.shell toolbox
	./build.sh $@ $<

golang-toolbox: Dockerfile.golang toolbox
	./build.sh $@ $<

lua-toolbox: Dockerfile.lua toolbox
	./build.sh $@ $<

clean:
	./clean.sh $(images)

.PHONY: $(images) all clean
