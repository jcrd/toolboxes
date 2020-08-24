all: toolbox python-toolbox shell-toolbox

toolbox: Dockerfile
	podman build -t supplantr/$@ -f $< .

python-toolbox: Dockerfile.python toolbox
	podman build -t supplantr/$@ -f $< .

shell-toolbox: Dockerfile.shell toolbox
	podman build -t supplantr/$@ -f $< .

.PHONY: all toolbox python-toolbox shell-toolbox
