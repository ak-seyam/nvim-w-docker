FROM fedora:37

RUN dnf install -y neovim git 

WORKDIR /projects

RUN git clone https://github.com/A-Siam/nvim-w-docker

RUN cd nvim-w-docker

RUN cp -r ./nvim ~/.config

RUN cd /projects

CMD ["nvim"]

