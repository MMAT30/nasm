;------------------------------------------
; int slen(String message)
; String length calculation function
strlen:                     
    push    ebx             ; push ebx onto the stack - (LIFO)
    mov     ebx, eax        ; move the address in EAX into EBX (Both point to the same segment in memory)
 
nextchar:
    cmp     byte [eax], 0   ; compare the byte pointed to by EAX at this address against zero (Zero is an end of string delimiter)
    jz      finished        ; jump if zero to finished label
    inc     eax             ; increment the address by one byte
    jmp     nextchar        ; jump to nextchar label
 
finished:       
    ; eax = (ebx - eax) 
    ; result = (destination, source)      
    sub     eax, ebx        ; sub the address in ebx from eax
    pop     ebx             ; pop the value on the stack back into EBX
    ret                     ; return back to caller
