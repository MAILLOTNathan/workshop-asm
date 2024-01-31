BITS 64

section .data
    stdout equ 1
    hello db 'Hello, World!', 0
    len_hello equ $ - hello

section .text
    global _start

_start:
    mov edx, len_hello
    mov ecx, hello
    mov ebx, stdout
    mov eax, 4
    int 0x80
    mov ebx, 0
    mov eax, 1
    int 0x80