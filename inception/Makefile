up:
	docker-compose -f ./srcs/docker-compose.yml up --build

down:
	docker-compose -f ./srcs/docker-compose.yml down

build:
	docker-compose -f ./srcs/docker-compose.yml build

clean:
	docker system  prune -a

fclean: clean
	docker ps -aq | xargs docker rm -fv && docker volume ls -q | xargs docker volume rm ; rm -rf /home/orbiay/data/wp-data/* /home/orbiay/data/base-data/*
