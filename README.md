# nasm

Netwide Assembler



# Docker

Since we are targeting binary for x86 (32 bit) Unix/Linux systems the Dockerfile and the Docker Compose file included are used to move the code to the container and run it if you have issue with running the examples due to the system you are on. For example M1, M2, Arm, and other cpu archs.

1) Run the following in the root of the repo to copy the examples, the build is optional but recommend

```shell
docker compose up --build
```

3) Next open a second terminal and run this to connec to the shell

```shell
docker compose exec app /bin/sh
```
