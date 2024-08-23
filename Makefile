NAME = inception

all: $(NAME)

$(NAME):
	bash ./srcs/requirements/tools/start.sh
	cd srcs && docker compose up

clean:
	cd srcs && docker compose down

fclean: clean
	docker image rm -f $$(docker images -q)
	docker volume rm $$(docker volume ls -q)

re: fclean all
