mov ah, 0x0e
mov al, 'a'
int 0x10

mov bl, 0

_loop:
  inc al 
  inc bl
  cmp bl, 30
  je _exit
  mov ah, 0x0e
  int 0x10
  jmp _loop

_exit:
  jmp $

times 510-($-$$) db 0
db 0x55, 0xaa