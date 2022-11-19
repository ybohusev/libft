# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ybohusev <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/13 20:05:43 by ybohusev          #+#    #+#              #
#    Updated: 2017/11/13 20:05:49 by ybohusev         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


.PHONY: get_lib create_dirs

NAME = libft.a

CC = gcc
FLAGS += -Wall -Wextra -Werror -std=c11  $(if $(findstring Release, $(Target)),-o3,-g)

BUILD_DIR = ./build

INC_DIR = ./includes/

SRC_DIR = ./src

SRC =

SRC += ft_strcat.c
SRC += ft_strcmp.c
SRC += ft_strdup.c
SRC += ft_strlen.c
SRC += ft_strncat.c
SRC += ft_strchr.c
SRC += ft_strcpy.c
SRC += ft_strncmp.c
SRC += ft_strstr.c
SRC += ft_strnstr.c
SRC += ft_strlcat.c
SRC += ft_strncpy.c
SRC += ft_strrchr.c
SRC += ft_isascii.c
SRC += ft_isdigit.c
SRC += ft_isprint.c
SRC += ft_isalpha.c
SRC += ft_toupper.c
SRC += ft_tolower.c
SRC += ft_atoi.c
SRC += ft_itoa.c
SRC += ft_bzero.c
SRC += ft_isalnum.c
SRC += ft_putchar.c
SRC += ft_putchar_fd.c
SRC += ft_putendl.c
SRC += ft_putendl_fd.c
SRC += ft_putnbr.c
SRC += ft_putnbr_fd.c
SRC += ft_putstr.c
SRC += ft_putstr_fd.c
SRC += ft_memalloc.c
SRC += ft_memccpy.c
SRC += ft_memchr.c
SRC += ft_memcmp.c
SRC += ft_memcpy.c
SRC += ft_memmove.c
SRC += ft_memset.c
SRC += ft_memdel.c
SRC += ft_strnew.c
SRC += ft_strdel.c
SRC += ft_strclr.c
SRC += ft_striter.c
SRC += ft_striteri.c
SRC += ft_strmap.c
SRC += ft_strmapi.c
SRC += ft_strequ.c
SRC += ft_strnequ.c
SRC += ft_strsub.c
SRC += ft_strjoin.c
SRC += ft_strtrim.c
SRC += ft_strsplit.c
SRC += ft_lstnew.c
SRC += ft_lstdelone.c
SRC += ft_lstdel.c
SRC += ft_lstadd.c
SRC += ft_lstiter.c
SRC += ft_lstmap.c
SRC += ft_sqrt.c
SRC += ft_itoa_base.c
SRC += ft_putwchar.c
SRC += ft_count_octets.c
SRC += ft_itoa_large.c
SRC += ft_putwstr.c
SRC += ft_wstrsize.c
SRC += ft_wstrlen.c
SRC += ft_wstrsub.c
SRC += ft_wstrnew.c
SRC += ft_wstrset.c
SRC += ft_wstrjoin.c
SRC += get_next_line.c

OBJ = $(SRC:.c=.o)
CACHE = .cache

TARGET = $(if $(findstring Release, $(Target)),Release,Debug)
TARGET_DIR = $(addprefix $(BUILD_DIR)/,$(TARGET))

OBJ_DIR = $(addprefix $(TARGET_DIR)/,$(CACHE))

SRCS = $(addprefix $(SRC_DIR)/,$(SRC))
OBJS = $(addprefix $(OBJ_DIR)/,$(OBJ))

all: build

build: create_dirs $(NAME)

create_dirs:
	@mkdir -p $(BUILD_DIR)
	@mkdir -p $(TARGET_DIR)
	@mkdir -p $(OBJ_DIR)

$(NAME): $(OBJS)
	ar rcs $(addprefix $(TARGET_DIR)/,$(NAME)) $(OBJS)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(FLAGS) -I $(INC_DIR) -o $@ -c $<

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(BUILD_DIR)
	rm -rf $(NAME)

re: fclean all
