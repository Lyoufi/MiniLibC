BITS 64

SECTION .text

GLOBAL memset

memset:
    CMP rdx, 0
    JE end
    MOV byte [rdi], sil 
    INC rdi
    DEC rdx
    JMP memset
    
end:
    MOV rax, rdi
    RET
