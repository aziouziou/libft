# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abziouzi <abziouzi@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/11 01:45:01 by abziouzi          #+#    #+#              #
#    Updated: 2023/04/29 22:25:09 by abziouzi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Name of the executable
NAME	=	libft.a

# Compiler and CFLAGS
CC		=	gcc
CCFLAGS	=	-Wall -Wextra -Werror

# Source files
SRC		=	ft_atoi.c			\
			ft_bzero.c			\
			ft_calloc.c			\
			ft_isalnum.c		\
			ft_isalpha.c		\
			ft_isascii.c		\
			ft_isdigit.c		\
			ft_isprint.c		\
			ft_itoa.c			\
			ft_lstadd_back.c	\
			ft_lstadd_front.c	\
			ft_lstclear.c		\
			ft_lstdelone.c		\
			ft_lstiter.c		\
			ft_lstlast.c		\
			ft_lstmap.c			\
			ft_lstnew.c			\
			ft_lstsize.c		\
			ft_memccpy.c		\
			ft_memchr.c			\
			ft_memcmp.c			\
			ft_memcpy.c			\
			ft_memmove.c		\
			ft_memset.c			\
			ft_putchar_fd.c		\
			ft_putchar.c		\
			ft_putendl_fd.c		\
			ft_putendl.c		\
			ft_putnbr_fd.c		\
			ft_putnbr.c			\
			ft_putnstr.c		\
			ft_putlnbr.c		\
			ft_putstr_fd.c		\
			ft_putstr.c			\
			ft_split.c			\
			ft_strchr.c			\
			ft_strcmp.c			\
			ft_strcpy.c			\
			ft_striteri.c		\
			ft_strdup.c			\
			ft_strjoin.c		\
			ft_strlcat.c		\
			ft_strlcpy.c		\
			ft_strlen.c			\
			ft_strmapi.c		\
			ft_strncat.c		\
			ft_strncmp.c		\
			ft_strncpy.c		\
			ft_strnstr.c		\
			ft_strrchr.c		\
			ft_strstr.c			\
			ft_strtrim.c		\
			ft_substr.c			\
			ft_tolower.c		\
			ft_toupper.c

# Object files
OBJ		=	$(SRC:.c=.o)

# Compilation rule
all		:	$(NAME)

# Linking rule
$(NAME)	:	$(OBJ)
			ar rcs $(NAME) $(OBJ)
			@ clear

# Compilation of object files
%.o		:	%.c
			$(CC) $(CCFLAGS) -c $< -o $@

# Clean rule
clean	:
			rm -f $(OBJ)
			@ clear

# Clean and fclean rules
fclean	:	clean
			rm -f $(NAME)
			@ clear

# Rebuild rule
re		:	fclean all

# .PHONY targets
.PHONY	:	all clean fclean re
