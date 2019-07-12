BITS 64

SECTION .text

GLOBAL strlen

strlen:
	MOV RCX, 0

loop:
	CMP byte [RDI], 0
	JE end
        INC RDI
        INC RCX
        JMP loop

end:
	MOV RAX, RCX
	RET
