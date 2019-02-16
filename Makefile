# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sfranc <sfranc@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/07 16:47:23 by sfranc            #+#    #+#              #
#    Updated: 2017/08/02 18:29:05 by sfranc           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
PATH_SRCS = srcs
PATH_OBJS = objs
INCLUDES = includes
SRCS = 	$(addprefix $(PATH_SRCS)/, ft_abs.c \
		ft_addtotab.c \
		ft_atoi.c \
		ft_atoi_base.c \
		ft_bzero.c \
		ft_charappend.c \
		ft_charswap.c \
		ft_del.c \
		ft_exit.c \
		ft_freetab.c \
		ft_intputchar.c \
		ft_intsize.c \
		ft_isnumber.c \
		ft_isalnum.c \
		ft_isalpha.c \
		ft_isascii.c \
		ft_isdigit.c \
		ft_isprint.c \
		ft_isspace.c \
		ft_itoa.c \
		ft_itoa_base.c \
		ft_lstadd.c \
		ft_lstadd_last.c \
		ft_lstdel.c \
		ft_lstdelone.c \
		ft_lstiter.c \
		ft_lstlen.c \
		ft_lstmap.c \
		ft_lstnew.c \
		ft_lstprint.c \
		ft_memalloc.c \
		ft_memccpy.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_memcpy.c \
		ft_memdel.c \
		ft_memmove.c \
		ft_memset.c \
		ft_nb_words.c \
		ft_putchar.c \
		ft_putchar_fd.c \
		ft_putendl.c \
		ft_putendl_fd.c \
		ft_putnbr.c \
		ft_putnbr_endl.c \
		ft_putnbr_fd.c \
		ft_putstr.c \
		ft_putstr_fd.c \
		ft_puttab.c \
		ft_range.c \
		ft_strcat.c \
		ft_strchr.c \
		ft_strclr.c \
		ft_strcmp.c \
		ft_strcpy.c \
		ft_strdel.c \
		ft_strdup.c \
		ft_strequ.c \
		ft_striter.c \
		ft_striteri.c \
		ft_strjoin.c \
		ft_strjoin3.c \
		ft_strlcat.c \
		ft_strlen.c \
		ft_strmap.c \
		ft_strmapi.c \
		ft_strmerge.c \
		ft_strncat.c \
		ft_strncmp.c \
		ft_strncpy.c \
		ft_strnequ.c \
		ft_strnew.c \
		ft_strnew_set.c \
		ft_strnstr.c \
		ft_strrchr.c \
		ft_strsplit.c \
		ft_strstr.c \
		ft_strsub.c \
		ft_strtrim.c \
		ft_supprtotab.c \
		ft_swap_int.c \
		ft_swap_short.c \
		ft_tablen.c \
		ft_tabdup.c \
		ft_tolower.c \
		ft_toupper.c \
		ft_upcase.c \
		get_next_line.c \
		printbit.c \
		sort_int_tab.c \
		ull_len.c \
		ull_toa.c )
OBJS = $(SRCS:$(PATH_SRCS)/%.c=$(PATH_OBJS)/%.o)
FLAGS = -Wall -Wextra -Werror
GREEN = \033[01;32m
YELLOW = \033[01;33m
CYAN = \033[01;36m
RESET = \033[00m

all: $(NAME)

$(NAME): $(OBJS)
	@ar rc $@ $^
	@ranlib $@
	@echo "make $@ : $(GREEN)OK$(RESET)"

$(PATH_OBJS)/%.o: $(PATH_SRCS)/%.c $(INCLUDES)
	@gcc $(FLAGS) -I $(INCLUDES) -c $< -o $@

clean:
	@rm -f $(OBJS)
	@echo "libft/$(PATH_OBJS) : $(CYAN)clean$(RESET)"

fclean: clean
	@rm -f $(NAME)
	@echo "libft/$(NAME) : $(CYAN)clean$(RESET)"

re: fclean all

.PHONY: clean fclean re
