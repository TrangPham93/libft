# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: trpham <trpham@student.hive.fi>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/30 15:05:22 by trpham            #+#    #+#              #
#    Updated: 2025/10/25 22:49:33 by trpham           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc
CFLAGS = -Wall -Wextra -Werror

SRC_DIR = sources
LIBFT_DIR = $(SRC_DIR)/libft

SRCS = $(LIBFT_DIR)/ft_isalpha.c \
       $(LIBFT_DIR)/ft_isdigit.c \
       $(LIBFT_DIR)/ft_isalnum.c \
       $(LIBFT_DIR)/ft_isascii.c \
       $(LIBFT_DIR)/ft_isprint.c \
       $(LIBFT_DIR)/ft_strlen.c \
       $(LIBFT_DIR)/ft_memset.c \
       $(LIBFT_DIR)/ft_bzero.c \
       $(LIBFT_DIR)/ft_memcpy.c \
       $(LIBFT_DIR)/ft_memmove.c \
       $(LIBFT_DIR)/ft_strlcat.c \
       $(LIBFT_DIR)/ft_strlcpy.c \
       $(LIBFT_DIR)/ft_toupper.c \
       $(LIBFT_DIR)/ft_tolower.c \
       $(LIBFT_DIR)/ft_strchr.c \
       $(LIBFT_DIR)/ft_strrchr.c \
       $(LIBFT_DIR)/ft_strncmp.c \
       $(LIBFT_DIR)/ft_memchr.c \
       $(LIBFT_DIR)/ft_memcmp.c \
       $(LIBFT_DIR)/ft_strnstr.c \
       $(LIBFT_DIR)/ft_atoi.c \
       $(LIBFT_DIR)/ft_calloc.c \
       $(LIBFT_DIR)/ft_strdup.c \
       $(LIBFT_DIR)/ft_substr.c \
       $(LIBFT_DIR)/ft_strjoin.c \
       $(LIBFT_DIR)/ft_strtrim.c \
       $(LIBFT_DIR)/ft_split.c \
       $(LIBFT_DIR)/ft_itoa.c \
       $(LIBFT_DIR)/ft_strmapi.c \
       $(LIBFT_DIR)/ft_striteri.c \
       $(LIBFT_DIR)/ft_putchar_fd.c \
       $(LIBFT_DIR)/ft_putstr_fd.c \
       $(LIBFT_DIR)/ft_putendl_fd.c \
       $(LIBFT_DIR)/ft_putnbr_fd.c \

SRCS_BONUS = $(LIBFT_DIR)/ft_lstnew_bonus.c \
              $(LIBFT_DIR)/ft_lstadd_front_bonus.c \
              $(LIBFT_DIR)/ft_lstsize_bonus.c \
              $(LIBFT_DIR)/ft_lstlast_bonus.c \
              $(LIBFT_DIR)/ft_lstadd_back_bonus.c \
              $(LIBFT_DIR)/ft_lstdelone_bonus.c \
              $(LIBFT_DIR)/ft_lstiter_bonus.c \
              $(LIBFT_DIR)/ft_lstclear_bonus.c \
              $(LIBFT_DIR)/ft_lstmap_bonus.c

OBJ_DIR = objs
OBJS = $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRCS))
OBJS_BONUS = $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRCS_BONUS))

NAME = libft.a

BONUS_NAME = .bonus

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(@D) 
	@$(CC) $(CFLAGS) -I$(SRC_DIR) -c $< -o $@
	
all: $(NAME)

$(NAME): $(OBJS)
	@ar rcs $(NAME) $^
	@echo "Compiled libft"
       

bonus: $(BONUS_NAME) 

$(BONUS_NAME): $(OBJS) $(OBJS_BONUS)
	@ar rcs $(NAME) $^
	@touch $(BONUS_NAME)
	@echo "Compiled libft && bonus"

clean:
	rm -rf $(OBJ_DIR)

fclean: clean
	rm -f $(NAME) $(BONUS_NAME)

re: fclean all

.PHONY: all clean fclean re bonus



