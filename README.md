<br/>

<h1 align="center">Volta</h1>

<p align="center">⚡ A Docker image for <a href="https://volta.sh">Volta</a>, the Hassle-Free JavaScript Tool Manager.</p>

<div align="center">
  <p dir="auto">
    <a href="https://hub.docker.com/r/domjtalbot/volta">
      <img src="https://img.shields.io/docker/image-size/domjtalbot/volta/latest?style=flat&logoColor=white&logo=docker" alt="Docker Image size" />
    </a>
    <a href="https://github.com/sponsors/domjtalbot">
      <img src="https://img.shields.io/badge/Sponsor @domjtalbot-30363D?style=flat&logo=GitHub-Sponsors&logoColor=#EA4AAA" alt="Sponsor @domjtalbot on GitHub!" />
    </a>
  </p>
</div>

<br/>

## How to use

The `volta` docker image is available from both [GitHub Container Registry (GHCR)](https://github.com/domjtalbot/docker-volta/pkgs/container/volta) and [Docker Hub](https://hub.docker.com/r/domjtalbot/volta).

```docker
# Define the Volta image to use
FROM domjtalbot/volta:latest

# Copy across package.json containing Volta config
COPY package.json .

# Set up Volta using the config from package.json
RUN volta setup

# Test the node & yarn versions
CMD node --version && yarn --version
```

<br/>

## Image Versions

### `volta:latest`

The default image based on [version 11 of Debian](https://www.debian.org/releases/bullseye/), with the [latest version of Volta](https://github.com/volta-cli/volta/releases).

### `volta:bookworm`

This image is based on the upcoming [version 12 of Debian](https://www.debian.org/releases/bookworm/), available in [the `debian` official image](https://hub.docker.com/_/debian).

### `volta:bullseye`

This image is based on [version 11 of Debian](https://www.debian.org/releases/bullseye/), available in [the `debian` official image](https://hub.docker.com/_/debian).

### `volta:buster`

This image is based on [version 10 of Debian](https://www.debian.org/releases/buster/), available in [the `debian` official image](https://hub.docker.com/_/debian).

### `volta:stretch`

This image is based on [version 9 of Debian](https://www.debian.org/releases/stretch/), available in [the `debian` official image](https://hub.docker.com/_/debian).

### `volta:<debian-version>-slim`

Each Debian version supports the slim variant. These images only contain the minimal packages required for running Debian and Volta.

For example:

- `volta:bookworm-slim`

### `volta:<volta-version>`

These images allow you to define [the version of Volta]((https://github.com/volta-cli/volta/releases) used. The image is based on [version 11 of Debian](https://www.debian.org/releases/bullseye/).

For example:

- `volta:1.7.0`

### `volta:<volta-version>-<debian-version>`

These images allow you to define [the version of Volta]((https://github.com/volta-cli/volta/releases) and [Debian](https://www.debian.org/releases/bullseye/) used.

For example:

- `volta:1.7.0-bookworm`
- `volta:1.7.0-bookworm-slim`

<br/>

## License

View the [license for Votla](https://github.com/volta-cli/volta/blob/main/LICENSE) or the [license for this Docker image](LICENSE).

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

<br/>

<div align="center">
<small>⚡ ♥ 🐳</small></div>
