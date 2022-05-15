<br/>

<h1 align="center">Volta</h1>

<p align="center">⚡ A Docker image for Volta</p>

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
# Specify the volta base image
FROM volta

# Copy across your files with the package.json

# Set up Volta using the config from your package.json
RUN volta setup

# ... rest of config

```

 
<br/>
