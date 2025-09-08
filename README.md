[![build status](https://github.com/JordyAaldering/ecodynamic-docker/workflows/docker/badge.svg)](https://github.com/JordyAaldering/ecodynamic-docker/actions?query=workflow%3A"docker")

# ecodynamic Docker

This repository contains Dockerfiles for running programs with the [`ecodynamic`](https://github.com/JordyAaldering/ecodynamic) energy-aware dynamic resource controller.

## Standalone

```bash
docker run -d --rm \
 -v /tmp:/tmp \
 --user $(id -u):$(id -g) \
 ecodynamic:standalone <server-config>
```

- `-d`: Run the container detached, alternatively use `-it` to keep the container open in your terminal to see its output.
- `--rm`: Remove the container when the server is stopped.
- `-v /tmp:/tmp`: Mount the directory used for the Unix Domain Socket file, used for communication to the server.
- `--user $(id -u):$(id -g)`: Ensure that the generated Socket file has the same permissions as the current user, allowing for read and write access.
