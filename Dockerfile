###########################################################
# Volta
###########################################################

# The version of Volta to install.
# (Defaults to latest)
ARG DEBIAN_VERSION=bullseye-slim

FROM debian:$DEBIAN_VERSION

# The version of Volta to install.
# (Defaults to latest)
ARG VERSION=latest

ENV VOLTA_VERSION $VERSION

RUN \
    # Update packages
    apt-get update \
    #
    # Install package dependencies
    && apt-get install -y \
    ca-certificates \
    curl \
    --no-install-recommends \
    #
    # Remove package lists
    && rm -rf /var/lib/apt/lists/* \
    #
    # Remove recommended packages to reduce image
    && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false

SHELL ["/bin/bash", "-c"]

ENV BASH_ENV ~/.bashrc
ENV VOLTA_HOME /root/.volta
ENV PATH $VOLTA_HOME/bin:$PATH

RUN \
  # Install Volta
  if [ "$VERSION" = "latest" ]; \
  then \
  curl https://get.volta.sh | bash; \
  else \
  curl https://get.volta.sh | bash -s -- --version $VERSION; \
  fi \
  # Test install
  && ls -l ~/.volta/bin \
  && volta --version
