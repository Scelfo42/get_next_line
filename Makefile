# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cscelfo <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/14 15:26:47 by cscelfo           #+#    #+#              #
#    Updated: 2023/02/14 15:26:48 by cscelfo          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = get_next_line.a

BONUS_NAME = bonus_get_next_line.a

ARCL = ar -crs

CC = clang

CFLAGS = -Wall -Wextra -Werror -g

RM = rm -f

SRCS = get_next_line.c get_next_line_utils.c \

BSRCS = get_next_line_bonus.c get_next_line_utils_bonus.c \

GREY            = \033[1;30m
RED             = \033[1;31m
GREEN           = \033[1;32m
YELLOW          = \033[1;33m
BLUE            = \033[1;34m
FUCHSIA         = \033[1;35m
CYAN            = \033[1;36m
WHITE           = \033[1;37m

OBJ = $(SRCS:.c=.o)

BOBJ = $(BSRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(ARCL) $(NAME) $(OBJ)

bonus: $(OBJ) $(BOBJ)
	$(ARCL) $(BONUS_NAME) $(OBJ) $(BOBJ)

clean:
	$(RM) $(OBJ) $(BOBJ)

fclean: clean
	$(RM) $(NAME) $(BONUS_NAME)

re: fclean all

push:
	git add .
	@echo "$(RED)Adding all changes"
	git commit -m "$(shell date +'%H:%M %d-%h') update"
	@echo "$(YELLOW)Committing...and..."
	git push
	@echo "$(GREEN)PUSHA KEKKO!$(WHITE)"
norm:
	norminette *

.PHONY: all bonus clean fclean re push norm
.SILENT:
