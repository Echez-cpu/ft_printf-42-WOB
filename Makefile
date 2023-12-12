# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pokpalae <pokpalae@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/12 19:24:10 by pokpalae          #+#    #+#              #
#    Updated: 2023/12/12 21:16:59 by pokpalae         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
CC = cc
FLAGS = -Wall -Werror -Wextra
AR = ar -rcs
SRC = ft_printf_int_decilm.c  ft_printf_num_hex.c ft_printf_pointer.c\
      ft_printf_unsigned_int.c ft_printf.c \

OBJ = $(SRC:.c=.o)

$(NAME): $(OBJ)
	Make -C ./libft
	cp libft/libft.a $(NAME)
	$(AR) $(NAME) $(OBJ)

all: $(NAME)

clean:
	make fclean -C ./libft
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re