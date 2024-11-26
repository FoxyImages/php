NAME = sunfoxcz/php

all: build release clean

build: 7.4 8.0 8.1 8.2 8.3 8.4

7.4: 7.4-cli 7.4-fpm
8.0: 8.0-cli 8.0-fpm
8.1: 8.1-cli 8.1-fpm
8.2: 8.2-cli 8.2-fpm
8.3: 8.3-cli 8.3-fpm
8.4: 8.4-cli 8.4-fpm

7.4-cli:
	docker build -t $(NAME):7.4-cli --rm -f 7.4/cli/Dockerfile .
	docker tag $(NAME):7.4-cli $(NAME):7.4
	docker tag $(NAME):7.4-cli $(NAME):7-cli
	docker tag $(NAME):7.4-cli $(NAME):7

8.0-cli:
	docker build -t $(NAME):8.0-cli --rm -f 8.0/cli/Dockerfile .
	docker tag $(NAME):8.0-cli $(NAME):8.0

8.1-cli:
	docker build -t $(NAME):8.1-cli --rm -f 8.1/cli/Dockerfile .
	docker tag $(NAME):8.1-cli $(NAME):8.1

8.2-cli:
	docker build -t $(NAME):8.2-cli --rm -f 8.2/cli/Dockerfile .
	docker tag $(NAME):8.2-cli $(NAME):8.2

8.3-cli:
	docker build -t $(NAME):8.3-cli --rm -f 8.3/cli/Dockerfile .
	docker tag $(NAME):8.3-cli $(NAME):8.3

8.4-cli:
	docker build -t $(NAME):8.4-cli --rm -f 8.4/cli/Dockerfile .
	docker tag $(NAME):8.4-cli $(NAME):8.4
	docker tag $(NAME):8.4-cli $(NAME):8-cli
	docker tag $(NAME):8.4-cli $(NAME):8
	docker tag $(NAME):8.4-cli $(NAME):cli
	docker tag $(NAME):8.4-cli $(NAME):latest

7.4-fpm:
	docker build -t $(NAME):7.4-fpm --rm -f 7.4/fpm/Dockerfile .
	docker tag $(NAME):7.4-fpm $(NAME):7-fpm

8.0-fpm:
	docker build -t $(NAME):8.0-fpm --rm -f 8.0/fpm/Dockerfile .

8.1-fpm:
	docker build -t $(NAME):8.1-fpm --rm -f 8.1/fpm/Dockerfile .

8.2-fpm:
	docker build -t $(NAME):8.2-fpm --rm -f 8.2/fpm/Dockerfile .

8.3-fpm:
	docker build -t $(NAME):8.3-fpm --rm -f 8.3/fpm/Dockerfile .

8.4-fpm:
	docker build -t $(NAME):8.4-fpm --rm -f 8.4/fpm/Dockerfile .
	docker tag $(NAME):8.4-fpm $(NAME):8-fpm
	docker tag $(NAME):8.4-fpm $(NAME):fpm

release:
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '7.4-cli'; then echo "$(NAME):7.4-cli is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '8.0-cli'; then echo "$(NAME):8.0-cli is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '8.1-cli'; then echo "$(NAME):8.1-cli is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '8.2-cli'; then echo "$(NAME):8.2-cli is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '8.3-cli'; then echo "$(NAME):8.3-cli is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '8.4-cli'; then echo "$(NAME):8.4-cli is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '7.4-fpm'; then echo "$(NAME):7.4-fpm is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '8.0-fpm'; then echo "$(NAME):8.0-fpm is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '8.1-fpm'; then echo "$(NAME):8.1-fpm is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '8.2-fpm'; then echo "$(NAME):8.2-fpm is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '8.3-fpm'; then echo "$(NAME):8.3-fpm is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F '8.4-fpm'; then echo "$(NAME):8.4-fpm is not yet built. Please run 'make build'"; false; fi
	docker push $(NAME):7.4-cli
	docker push $(NAME):7.4
	docker push $(NAME):7-cli
	docker push $(NAME):7
	docker push $(NAME):8.0-cli
	docker push $(NAME):8.0
	docker push $(NAME):8.1-cli
	docker push $(NAME):8.1
	docker push $(NAME):8.2-cli
	docker push $(NAME):8.2
	docker push $(NAME):8.3-cli
	docker push $(NAME):8.3
	docker push $(NAME):8.4-cli
	docker push $(NAME):8.4
	docker push $(NAME):8-cli
	docker push $(NAME):8
	docker push $(NAME):cli
	docker push $(NAME):latest
	docker push $(NAME):7.4-fpm
	docker push $(NAME):7-fpm
	docker push $(NAME):8.0-fpm
	docker push $(NAME):8.1-fpm
	docker push $(NAME):8.2-fpm
	docker push $(NAME):8.3-fpm
	docker push $(NAME):8.4-fpm
	docker push $(NAME):8-fpm
	docker push $(NAME):fpm

clean:
	docker builder prune
