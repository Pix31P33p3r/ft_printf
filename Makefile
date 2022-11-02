# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: elel-yak <elel-yak@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/30 19:49:26 by elel-yak          #+#    #+#              #
#    Updated: 2022/10/31 15:42:05 by elel-yak         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME	= libftprintf.a
CC		= cc
CFLAGS	= -Wall -Wextra -Werror
SRCS	= ft_printf.c ft_printf_utils.c
OBJS	= $(SRCS:.c=.o)

all:	$(NAME)

$(NAME):	$(OBJS)
		ar -rc $(NAME) $(OBJS)
clean:
		rm -f $(OBJS)

fclean:	clean
		rm -f $(NAME)

re:		fclean all