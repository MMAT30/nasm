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
    mov     ebx, msg    ; msg address is stored in ebx
    mov     eax, ebx    ; both ebx and eax are pointing to the same address

nextchar:
    cmp     byte [eax], 0   ; compare the byte pointed to by EAX at this address against zero (Zero is an end of string delimiter)
    jz      finished        ; jump if zero to finished label
    inc     eax             ; increment the address by one byte
    jmp     nextchar        ; jump to nextchar label


finished:       
    ; eax = (ebx - eax) 
    ; result = (destination, source)      
    sub     eax, ebx        ; sub the address in ebx from eax
                            


    ; (op code 4) - write(ebx, ecx, edx)
    ; (op code 4) - write(unsigned int fd, const char *buf, size_t count)
    mov     edx, eax        ; size_t count
    mov     ecx, msg        ; const char *buf 
    mov     ebx, 1          ; unsigned int fd
    mov     eax, 4          ; write op code
    int     80h             ; interrupt 80h - call kernel
 

    ; (op code 1) - exit(ebx)
    ; (op code 1) - exit(int error_code)
    mov     ebx, 0          ; error_code
    mov     eax, 1          ; exit op code
    int     80h             ; interrupt 80h - call kernel