FROM supplantr/toolbox

RUN dnf install -y luarocks
RUN dnf install -y lua-ldoc
RUN dnf install -y lua-devel

RUN luarocks install dkjson
