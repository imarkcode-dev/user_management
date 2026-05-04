FROM mcr.microsoft.com/devcontainers/java:17

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y install --no-install-recommends \
    postgresql-client \
    iputils-ping \
    netcat-openbsd \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

ARG USERNAME=vscode
RUN mkdir -p /workspace && chown -R $USERNAME:$USERNAME /workspace

USER $USERNAME

ENV DEBIAN_FRONTEND=dialog

