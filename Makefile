##
## Makefile for malloc in /home/kruszk_t/rendu/PSU_2014_malloc
## 
## Made by kruszk_t
## Login   <kruszk_t@epitech.net>
## 
## Started on  Sun Feb 15 16:48:10 2015 kruszk_t
## Last update Tue Jun 23 19:02:46 2015 Tony Kruszkewycz
##


SRC		= src/malloc.c		\
		  src/realloc.c		\
		  src/calloc.c		\
		  src/free.c		\

NAME		= libmy_malloc_$(HOSTTYPE).so

LNNAME		= libmy_malloc.so

OBJ		= $(SRC:.c=.o)

CC		= gcc

RM		= rm -f

CFLAGS		+= -Wall -Wextra -ansi -pedantic -I./inc -D_DEFAULT_SOURCE

all:		$(NAME)

$(NAME):	$(OBJ)
		$(CC) -fPIC -shared $(SRC) -o $(NAME) -I./inc
		ln -s $(NAME) $(LNNAME)

clean:
		$(RM) $(OBJ)

fclean:		clean
		rm -f $(NAME) $(LNNAME)

re:		fclean all

.PHONY:		all clean fclean re
