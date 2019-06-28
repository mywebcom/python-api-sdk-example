FROM ubuntu:18.04

MAINTAINER Richard Cai version: 0.0.1

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update

RUN apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev

RUN apt-get install -y  git

RUN adduser python

USER python

RUN git clone https://github.com/pyenv/pyenv.git ~/.pyenv

RUN mkdir -p /home/python/apisdk

ENV HOME  /home/python
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH

RUN pyenv install 3.6.4
RUN pyenv install 2.7.14

RUN git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv

RUN echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

RUN exec $SHELL

RUN pyenv global 3.6.4 2.7.14

RUN pip2.7 install tox

RUN pip3.6 install tox

WORKDIR /home/python