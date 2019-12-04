NAME = sunfoxcz/php

all: build

build: 5.6 7.0 7.1 7.2 7.3 7.4

5.6: 5.6-cli 5.6-fpm
7.0: 7.0-cli 7.0-fpm
7.1: 7.1-cli 7.1-fpm
7.2: 7.2-cli 7.2-fpm
7.3: 7.3-cli 7.3-fpm
7.4: 7.4-cli 7.4-fpm

5.6-cli:
	docker build -t $(NAME):5.6-cli --rm -f 5.6/cli/Dockerfile .
	docker tag $(NAME):5.6-cli $(NAME):5.6

7.0-cli:
	docker build -t $(NAME):7.0-cli --rm -f 7.0/cli/Dockerfile .
	docker tag $(NAME):7.0-cli $(NAME):7.0

7.1-cli:
	docker build -t $(NAME):7.1-cli --rm -f 7.1/cli/Dockerfile .
	docker tag $(NAME):7.1-cli $(NAME):7.1

7.2-cli:
	docker build -t $(NAME):7.2-cli --rm -f 7.2/cli/Dockerfile .
	docker tag $(NAME):7.2-cli $(NAME):7.2

7.3-cli:
	docker build -t $(NAME):7.3-cli --rm -f 7.3/cli/Dockerfile .
	docker tag $(NAME):7.3-cli $(NAME):7.3

7.4-cli:
	docker build -t $(NAME):7.4-cli --rm -f 7.4/cli/Dockerfile .
	docker tag $(NAME):7.4-cli $(NAME):7.4
	docker tag $(NAME):7.4-cli $(NAME):7
	docker tag $(NAME):7.4-cli $(NAME):7-cli
	docker tag $(NAME):7.4-cli $(NAME):cli
	docker tag $(NAME):7.4-cli $(NAME):latest

5.6-fpm:
	docker build -t $(NAME):5.6-fpm --rm -f 5.6/fpm/Dockerfile .

7.0-fpm:
	docker build -t $(NAME):7.0-fpm --rm -f 7.0/fpm/Dockerfile .

7.1-fpm:
	docker build -t $(NAME):7.1-fpm --rm -f 7.1/fpm/Dockerfile .

7.2-fpm:
	docker build -t $(NAME):7.2-fpm --rm -f 7.2/fpm/Dockerfile .

7.3-fpm:
	docker build -t $(NAME):7.3-fpm --rm -f 7.3/fpm/Dockerfile .

7.4-fpm:
	docker build -t $(NAME):7.4-fpm --rm -f 7.4/fpm/Dockerfile .
	docker tag $(NAME):7.4-fpm $(NAME):7-fpm
	docker tag $(NAME):7.4-fpm $(NAME):fpm

release:
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '5.6-cli'; then echo "$(NAME):5.6-cli is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '7.0-cli'; then echo "$(NAME):7.0-cli is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '7.1-cli'; then echo "$(NAME):7.1-cli is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '7.2-cli'; then echo "$(NAME):7.2-cli is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '7.3-cli'; then echo "$(NAME):7.3-cli is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '7.4-cli'; then echo "$(NAME):7.4-cli is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '5.6-fpm'; then echo "$(NAME):5.6-fpm is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '7.0-fpm'; then echo "$(NAME):7.0-fpm is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '7.1-fpm'; then echo "$(NAME):7.1-fpm is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '7.2-fpm'; then echo "$(NAME):7.2-fpm is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '7.3-fpm'; then echo "$(NAME):7.3-fpm is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '7.4-fpm'; then echo "$(NAME):7.4-fpm is not yet built. Please run 'make build'"; false; fi
	docker push $(NAME):5.6-cli
	docker push $(NAME):7.0-cli
	docker push $(NAME):7.1-cli
	docker push $(NAME):7.2-cli
	docker push $(NAME):7.3-cli
	docker push $(NAME):7.4-cli
	docker push $(NAME):7.4
	docker push $(NAME):7
	docker push $(NAME):7-cli
	docker push $(NAME):cli
	docker push $(NAME):latest
	docker push $(NAME):5.6-fpm
	docker push $(NAME):7.0-fpm
	docker push $(NAME):7.1-fpm
	docker push $(NAME):7.2-fpm
	docker push $(NAME):7.3-fpm
	docker push $(NAME):7.4-fpm
	docker push $(NAME):7-fpm
	docker push $(NAME):fpm
