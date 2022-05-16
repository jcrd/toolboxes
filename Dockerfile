FROM registry.fedoraproject.org/fedora-toolbox:36

RUN dnf install -y colordiff
RUN dnf install -y fzf
RUN dnf install -y git-subtree
RUN dnf install -y kitty-terminfo
RUN dnf install -y make
RUN dnf install -y neovim
RUN dnf install -y perl
RUN dnf install -y ranger
RUN dnf install -y rlwrap
RUN dnf install -y rpkg
RUN dnf install -y rpmdevtools
RUN dnf install -y tmux
RUN dnf install -y zsh

RUN dnf install -y python-pip
RUN pip install pre-commit
RUN pip install vim-vint

RUN ln -s /usr/bin/nvim /usr/local/bin/vim

CMD /usr/bin/zsh
