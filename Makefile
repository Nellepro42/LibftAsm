# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: neprocur <neprocur@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/12/15 06:22:54 by neprocur          #+#    #+#              #
#    Updated: 2015/04/22 01:37:01 by neprocur         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a
SRC = ft_bzero.s ft_strcat.s ft_isalpha.s ft_isdigit.s ft_isalnum.s \
	  ft_isascii.s ft_isprint.s ft_toupper.s ft_tolower.s ft_puts.s \
	  ft_strlen.s ft_memset.s ft_memcpy.s ft_strdup.s ft_cat.s ft_swap.s \
	ft_islower.s ft_isupper.s ft_ispunct.s ft_iscntrl.s
CC = nasm -f macho64

OBJ = $(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ) 
		ar rc $(NAME) $(OBJ)
			ranlib $(NAME)

%.o: %.s
		$(CC) $< -o $@

clean:
		rm -f $(OBJ)

fclean: clean
		rm -f $(NAME)

re: fclean all

