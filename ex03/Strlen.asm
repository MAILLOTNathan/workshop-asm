BITS 64

section .text
    global my_Strlen

my_Strlen:
        mov rcx, 0

loop:
    cmp byte[rdi + rcx], 0
    je end
    add rcx, 1
    jump loop

end:
    mov rax, rcx
    ret