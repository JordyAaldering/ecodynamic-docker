[![build status](https://github.com/JordyAaldering/ecodynamic-docker/workflows/docker/badge.svg)](https://github.com/JordyAaldering/ecodynamic-docker/actions?query=workflow%3A"docker")

# ecodynamic Docker

This repository contains Dockerfiles for running programs with the [`ecodynamic`](https://github.com/JordyAaldering/ecodynamic) energy-aware dynamic resource controller.

## Standalone

```bash
docker run -d --rm --privileged \
 -v /tmp:/tmp \
 -v /sys/class/powercap:/sys/class/powercap \
 ecodynamic:standalone <config>
```

- `-d`: Run the container detached, alternatively use `-it` to keep the container open in your terminal to see its output.
- `--rm`: Remove the container when the server is stopped.
- `--privileged`: Reading and writing RAPL requires elevated privileges.
- `-v`: Mount the directory for the Unix Domain Socket, and the RAPL directories.
