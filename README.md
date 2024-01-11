# nasm

Netwide Assembler

# Docker

Since we are targeting binary for x86 (32 bit) Unix/Linux systems the Dockerfile and the Docker Compose file included are used to move the code to the container and run it if you have issue with running the examples due to the system you are on. For example M1, M2, Arm, and other cpu archs.

1) Run the following in the root of the repo to copy the examples, the build is optional but recommend

```shell
docker compose up --build
```

2) Next open a second terminal and run this to connec to the shell

```shell
docker compose exec app /bin/sh
```


# TO-LEARN

1. **decl and stdcall** : In these conventions, arguments are typically passed on the stack, not in registers like `EAX`. The `EAX` register is commonly used to store the function's return value.
2. **fastcall** : In the fastcall convention, the first two (in some variations, more) integer or pointer arguments are often passed in registers for efficiency. The specific registers used can vary, but common choices include `ECX` and `EDX`. `EAX` is less commonly used for passing arguments but is not out of the question depending on the specific variant of fastcall being used.
3. **Custom Conventions** : In assembly language, especially when you are not interfacing with C or other high-level languages, you are free to define your own calling convention. You could decide to pass arguments in `EAX` or any other register if it suits your program's design.

4) create a .gdbinit at $HOME and add 'set disassebly-flavor intel'
