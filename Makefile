NAME = inception

all: $(NAME)

$(NAME):
	cd srcs && docker compose up

clean:
	cd srcs && docker compose down

clean_volume: clean
	docker volume rm $$(docker volume ls -q)

fclean: clean
	docker image rm -f $$(docker images -q)

re: fclean all
