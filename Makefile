all:
	sudo mkdir -p /home/ebalgruu/data/mariadb/ /home/ebalgruu/data/wordpress/ /home/ebalgruu/data/html/ /home/ebalgruu/data/portainer/ /home/ebalgruu/data/ftp/
	sudo sed -i 's/127.0.0.1    localhost/127.0.0.1    ebalgruu.42.fr/' /etc/hosts
	docker-compose -f srcs/docker-compose.yml up
stop:
	docker-compose -f srcs/docker-compose.yml stop
start:
	docker-compose -f srcs/docker-compose.yml start
restart:
	docker-compose -f srcs/docker-compose.yml restart
pause:
	docker-compose -f srcs/docker-compose.yml pause
build:
	docker-compose -f srcs/docker-compose.yml build ftp-server
logs:
	docker-compose -f srcs/docker-compose.yml logs
help:
	docker-compose -f srcs/docker-compose.yml help
version:
	docker-compose -f srcs/docker-compose.yml version
ps:
	docker-compose -f srcs/docker-compose.yml ps
ls:
	docker volume ls
network:
	docker network ls
show:
	docker-compose -f srcs/docker-compose.yml start mariadb
	docker exec -it mariadb mysql -uroot -p
	# USE db
	# show tables;
	# SELECT * FROM wp_users;
	# docker exec -it ftp-server bash
	# whoami // command for identifible user
	# su ebalgruu // change user
clean:
	docker-compose -f srcs/docker-compose.yml down
fclean: clean
	sudo rm -rf /home/ebalgruu/data
	sudo sed -i 's/127.0.0.1    ebalgruu.42.fr/127.0.0.1    localhost/' /etc/hosts
	sudo docker volume rm $$(sudo docker volume ls -q)
	sudo docker rmi -f $$(sudo docker images -qa)
	sudo docker system prune -a

.PHONY: all stop start restart build help ps ls network pause show version clean fclean