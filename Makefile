toolbox:
	podman build -t supplantr/toolbox -f Dockerfile .

python-toolbox:
	podman build -t supplantr/python-toolbox -f Dockerfile.python .

.PHONY: toolbox python-toolbox
