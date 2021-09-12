FROM supplantr/toolbox

RUN dnf install -y npm

RUN npm i -g npm
RUN npm i -g eslint
RUN npm i -g prettier
RUN npm i -g typescript
RUN npm i -g typescript-language-server
