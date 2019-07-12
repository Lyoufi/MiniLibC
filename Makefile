NAME	=	libasm.so

SRC	=	strlen.asm	\
		strcmp.asm	\
		strchr.asm	\
		memset.asm	\
		memcpy.asm	\
		memmove.asm	\
		strncmp.asm	\
		strcasecmp.asm	\
		rindex.asm	\
		strstr.asm	\
		strpbrk.asm	\
		strcspn.asm

CC	=	gcc

CFLAGS	=	-shared -fPIC

ASM	=	nasm	

RM	=	rm -f

ELFLAGS	=	-f elf64

OBJS	=	$(SRC:.asm=.o)

%.o: %.asm
	$(ASM) -o $@ $< $(ELFLAGS)

all:	$(NAME)

$(NAME):	$(OBJS)
		ld $(CFLAGS) -o $(NAME) $(OBJS)

clean:
	$(RM) $(OBJS)


fclean:	clean
	$(RM) $(NAME)

re:	fclean all

.PHONY:	all clean fclean re
