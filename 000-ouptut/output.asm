SECTION .data

; declaring a variable - msg
; db - define byte
; 0Ah - line feed character
; msg - 13 bytes long
msg     db      'Hello World!', 0Ah    

; calculating the length of the msg variable
msgLen  equ     $ - msg



SECTION .text
    ; declaring a label - (_start) - or entry point
    global  _start
 
_start:
 
    mov     edx, 13     ; bytes to write
    mov     ecx, msg    ; msg address is stored in ecx
    mov     ebx, 1      ; STDOUT - (file descriptor)
    mov     eax, 4      ; SYS_WRITE -(kernel opcode 4)
    int     80h         ; system interrupt


    mov     ebx, 0      ; return 0 status on exit
    mov     eax, 1      ; SYS_EXIT - (kernel opcode 1)
    int     80h         ; system interrupt