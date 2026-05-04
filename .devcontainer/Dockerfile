FROM mcr.microsoft.com/devcontainers/java:17

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y install --no-install-recommends \
    postgresql-client \
    iputils-ping \
    netcat-openbsd \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

ENV DEBIAN_FRONTEND=dialog


