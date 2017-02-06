FROM ubuntu:wily
MAINTAINER Florian Meskens <florian.meskens@gmail.com>

#Installing some packages

RUN apt-get update -y \
    && apt-get install -y \
    build-essential \
    vim \
    git \
    curl \
    python-dev \
    python-pip \
    cmake \
    wget \
    curl \
    sudo \
    iputils-ping \
    ansible \
    ssh \
    zsh \
    man \
    tmux \
    && rm -rf /var/lib/apt/lists/*

# Installing Docker client and Compose

RUN curl -Ssl https://get.docker.com | sh
RUN pip install docker-compose

# Installing oh-my-zsh
RUN bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Setting work dir
USER root
WORKDIR /root

CMD ["/bin/zsh"]
