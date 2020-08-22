FROM registry.fedoraproject.org/f32/fedora-toolbox:32

RUN dnf upgrade -y

RUN dnf install -y colordiff
RUN dnf install -y exa
RUN dnf install -y fzf
RUN dnf install -y kitty-terminfo
RUN dnf install -y make
RUN dnf install -y neovim
RUN dnf install -y psmisc
RUN dnf install -y python-neovim
RUN dnf install -y ranger
RUN dnf install -y rlwrap
RUN dnf install -y rpkg
RUN dnf install -y rpmdevtools
RUN dnf install -y tmux
RUN dnf install -y zsh

RUN dnf install -y python-pip
RUN pip install grip
RUN pip install vim-vint

# msgpack 1.0.0+ required by deoplete.
RUN pip install --upgrade msgpack

RUN ln -s /usr/bin/nvim /usr/local/bin/vim

CMD /usr/bin/zsh
