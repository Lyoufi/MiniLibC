BITS 64

SECTION .text

GLOBAL memmove

memmove:
    CMP rdx, 0
    JE end
    MOV r8b, byte [rsi]
    MOV byte [rdi], r8b
    INC rdi
    INC rsi
    DEC rdx
    JMP memmove
    
end:
    MOV rax, rdi
    RET
