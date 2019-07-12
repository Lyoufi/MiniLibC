BITS 64


SECTION .text


GLOBAL strncmp


strncmp:
    MOV r10b, BYTE [rdi]
    MOV r11b, BYTE [rsi]
    CMP r10b, 0
    JE end
    CMP r11b, 0
    JE end
    CMP r10b, r11b
    JNE end
    INC rdi
    INC rsi
    JMP strncmp

end:
    MOVZX rax, r10b
    MOVZX rbx, r11b
    SUB rax, rbx
    CMP rax, 0
    JL lesser
    JE retzero
    JG retone


lesser:
    MOV rax, -1
    RET

retzero:
    MOV rax, 0
    RET

retone:
    MOV rax, 1
    RET
    
