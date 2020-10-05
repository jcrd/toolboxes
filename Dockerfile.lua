FROM supplantr/toolbox

RUN dnf install -y luarocks
RUN dnf install -y lua-ldoc
