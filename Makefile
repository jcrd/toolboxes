images := toolbox python-toolbox shell-toolbox golang-toolbox

all: $(images)

toolbox: Dockerfile
	podman build -t supplantr/$@ -f $< .

python-toolbox: Dockerfile.python toolbox
	podman build -t supplantr/$@ -f $< .

shell-toolbox: Dockerfile.shell toolbox
	podman build -t supplantr/$@ -f $< .

golang-toolbox: Dockerfile.golang toolbox
	podman build -t supplantr/$@ -f $< .

clean:
	./clean.sh $(images)

.PHONY: $(images) all clean
