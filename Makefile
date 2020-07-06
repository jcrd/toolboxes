toolbox:
	podman build -t supplantr/toolbox -f Dockerfile .

python-toolbox:
	podman build -t supplantr/python-toolbox -f Dockerfile.python .

shell-toolbox:
	podman build -t supplantr/shell-toolbox -f Dockerfile.shell .

.PHONY: toolbox python-toolbox shell-toolbox
