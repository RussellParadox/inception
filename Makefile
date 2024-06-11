NAME = inception

all: $(NAME)

$(NAME):
	cd srcs && docker compose up

clean:
	cd srcs && docker compose down

fclean: clean
	docker image rm $$(docker images -q)

re: fclean all
