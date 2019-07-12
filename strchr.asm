BITS 64

SECTION .text

GLOBAL strchr

strchr:
        MOV RAX, 0

loop:
        CMP byte[RDI], sil
        JE eq
        INC rdi
        CMP BYTE[rdi], byte 0
        JE end
        JMP loop

eq: 
    MOV rax, rdi
    RET
    
end:
    RET
