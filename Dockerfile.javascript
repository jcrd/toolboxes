FROM supplantr/toolbox

RUN dnf install -y npm

RUN npm i -g npm
