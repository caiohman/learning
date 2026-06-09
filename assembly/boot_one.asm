; basic bootloader for i386 printing hello world

bits 16 ; bootloader with real mode
org 0x7c00 ; origin address

.start:
mov ah, byte 0x0e ; write 8 byte to ah
mov bh, byte 0x0 ; define background
mov bl, byte 0xF ; define foreground

mov si, 0 ; init counter

.loop:
mov al, [hello + si] ; character to write
int 0x10

inc si ; increment

cmp [hello + si], 0 ; compare if ch is null
jne .loop ; jump if not null to label init

hello: db "hello world"
times 510 - ($ - $$) db 0; pseudo instruction that repeat instruction
; ($ - $$) bytes quantity used so far
db 0x55  ; db define byte to close real mode
db 0xAA  ; db define byte to close real mode
