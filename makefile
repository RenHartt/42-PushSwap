# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bgoron <bgoron@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/31 10:39:42 by bgoron            #+#    #+#              #
#    Updated: 2024/05/24 15:04:22 by bgoron           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = push_swap
SRC = src/pushswap.c \
src/ft_check_utils.c \
src/ft_index.c \
src/ft_init.c \
src/ft_lst_utils.c \
src/ft_parse.c \
src/ft_push_and_swap.c \
src/ft_reverse_and_rotate.c \
src/ft_sort_big.c \
src/ft_sort_small.c \
src/ft_split.c \
src/ft_str_utils.c\

FLAG = -Wall -Wextra -Werror
IFLAG = -I include
CC = cc
OBJ_DIR = .obj
OBJ = $(addprefix $(OBJ_DIR)/, $(SRC:.c=.o))

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

$(OBJ_DIR)/%.o: %.c
	mkdir -p $(dir $@)
	$(CC) $(FLAG) $(IFLAG) -o $@ -c $<

clean:
	rm -f $(OBJ)
	rm -rf $(OBJ_DIR)

fclean: clean
	rm -f $(NAME)
	rm -rf $(OBJ_DIR)

re: fclean all

.PHONY: all clean fclean re
.SILENT:
