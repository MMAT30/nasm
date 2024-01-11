SECTION .data
; declaring a variable - msg
; db - define byte
; 0Ah - line feed character
; msg - 13 bytes long
msg     db      'Hello World!', 0Ah    



SECTION .text
    ; main = _start
    global  _start
 
_start:
    ; (op code 4) - write(ebx, ecx, edx)
    ; (op code 4) - write(unsigned int fd, const char *buf, size_t count)
    mov     edx, 13     ; size_t count - number of bytes to write
    mov     ecx, msg    ; const char *buf - pointer to msg
    mov     ebx, 1      ; unsigned int fd - file descriptor (1 = stdout)
    mov     eax, 4      ; write op code
    int     80h         ; interrupt 80h - call kernel


    ; (op code 1) - exit(ebx)
    ; (op code 1) - exit(int error_code)
    mov     ebx, 0      ; int error_code
    mov     eax, 1      ; exit op code
    int     80h         ; interrupt 80h - call kernel