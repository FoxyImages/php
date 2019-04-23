NAME = sunfoxcz/php-fpm

.PHONY: all php56-cli php70-cli php71-cli php72-cli php73-cli php56-fpm php70-fpm php71-fpm php72-fpm php73-fpm

all: php56-cli php70-cli php71-cli php72-cli php73-cli php56-fpm php70-fpm php71-fpm php72-fpm php73-fpm

php56-cli:
	docker build -t $(NAME):5.6 --rm -f 5.6/cli/Dockerfile .

php70-cli:
	docker build -t $(NAME):7.0 --rm -f 7.0/cli/Dockerfile .

php71-cli:
	docker build -t $(NAME):7.1 --rm -f 7.1/cli/Dockerfile .

php72-cli:
	docker build -t $(NAME):7.2 --rm -f 7.2/cli/Dockerfile .

php73-cli:
	docker build -t $(NAME):7.3 --rm -f 7.3/cli/Dockerfile .

php56-fpm:
	docker build -t $(NAME):5.6 --rm -f 5.6/fpm/Dockerfile .

php70-fpm:
	docker build -t $(NAME):7.0 --rm -f 7.0/fpm/Dockerfile .

php71-fpm:
	docker build -t $(NAME):7.1 --rm -f 7.1/fpm/Dockerfile .

php72-fpm:
	docker build -t $(NAME):7.2 --rm -f 7.2/fpm/Dockerfile .

php73-fpm:
	docker build -t $(NAME):7.3 --rm -f 7.3/fpm/Dockerfile .
