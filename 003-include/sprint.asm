;------------------------------------------
; void sprint(String message)
; String printing function
sprint:
    push    edx             ; save edx
    push    ecx             ; save ecx
    push    ebx             ; save ebx
    push    eax             ; save eax
    call    slen            ; call slen to get length of string
 
    mov     edx, eax        ; move length to edx
    pop     eax             ; restore eax
 
    ; (op code 4) - write(ebx, ecx, edx)
    ; (op code 4) - write(unsigned int fd, const char *buf, size_t count)
    mov     edx, eax        ; size_t count - result in eax from strlen
    mov     ecx, msg        ; const char *buf 
    mov     ebx, 1          ; unsigned int fd
    mov     eax, 4          ; write op code
    int     80h             ; interrupt 80h - call kernel
 
    pop     ebx             ; restore ebx
    pop     ecx             ; restore ecx
    pop     edx             ; restore edx
    ret                     ; return
