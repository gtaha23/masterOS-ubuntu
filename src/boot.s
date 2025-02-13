bits 32

section .multiboot
align 4
dd 0x1BADB002  
dd 0x00000000  
dd -(0x1BADB002 + 0x00000000) 

section .text
global start
extern kmain

start:
    cli
    mov esp, stack_space
    call kmain
    hlt

HaltKernel:
    cli
    hlt
    jmp HaltKernel

section .bss
align 16
resb 8192
stack_space:
