global _start
_start:
  mov ah, 0x0e
  mov al, 'a'
  int 0x10
  jmp $

times 510-($-$$) db 0
db 0x55, 0xaa