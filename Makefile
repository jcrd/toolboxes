all: toolbox python-toolbox shell-toolbox

toolbox: Dockerfile
	podman build -t supplantr/toolbox -f $< .

python-toolbox: Dockerfile.python toolbox
	podman build -t supplantr/python-toolbox -f $< .

shell-toolbox: Dockerfile.shell toolbox
	podman build -t supplantr/shell-toolbox -f $< .

.PHONY: all toolbox python-toolbox shell-toolbox
