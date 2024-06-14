FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

RUN apt-get update -y && \
  apt-get upgrade -y && \
  apt-get install -y cloc hunspell hunspell-en-gb && \
  apt-get clean && \ 
  rm -rf /var/lib/apt/lists/*