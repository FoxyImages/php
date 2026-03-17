NAME = sunfoxcz/php
DOCKER_BUILD_FLAGS ?=

all: build release clean

build: 8.2 8.3 8.4 8.5

8.2: 8.2-cli 8.2-fpm
8.3: 8.3-cli 8.3-fpm
8.4: 8.4-cli 8.4-fpm
8.5: 8.5-cli 8.5-fpm

8.2-cli:
	docker build $(DOCKER_BUILD_FLAGS) -t $(NAME):8.2-cli --rm -f 8.2/cli/Dockerfile .
	docker tag $(NAME):8.2-cli $(NAME):8.2

8.3-cli:
	docker build $(DOCKER_BUILD_FLAGS) -t $(NAME):8.3-cli --rm -f 8.3/cli/Dockerfile .
	docker tag $(NAME):8.3-cli $(NAME):8.3

8.4-cli:
	docker build $(DOCKER_BUILD_FLAGS) -t $(NAME):8.4-cli --rm -f 8.4/cli/Dockerfile .
	docker tag $(NAME):8.4-cli $(NAME):8.4

8.5-cli:
	docker build $(DOCKER_BUILD_FLAGS) -t $(NAME):8.5-cli --rm -f 8.5/cli/Dockerfile .
	docker tag $(NAME):8.5-cli $(NAME):8.5
	docker tag $(NAME):8.5-cli $(NAME):8-cli
	docker tag $(NAME):8.5-cli $(NAME):8
	docker tag $(NAME):8.5-cli $(NAME):cli
	docker tag $(NAME):8.5-cli $(NAME):latest

8.2-fpm:
	docker build $(DOCKER_BUILD_FLAGS) -t $(NAME):8.2-fpm --rm -f 8.2/fpm/Dockerfile .

8.3-fpm:
	docker build $(DOCKER_BUILD_FLAGS) -t $(NAME):8.3-fpm --rm -f 8.3/fpm/Dockerfile .

8.4-fpm:
	docker build $(DOCKER_BUILD_FLAGS) -t $(NAME):8.4-fpm --rm -f 8.4/fpm/Dockerfile .

8.5-fpm:
	docker build $(DOCKER_BUILD_FLAGS) -t $(NAME):8.5-fpm --rm -f 8.5/fpm/Dockerfile .
	docker tag $(NAME):8.5-fpm $(NAME):8-fpm
	docker tag $(NAME):8.5-fpm $(NAME):fpm

release:
	@if ! docker images $(NAME) --format "{{.Tag}}" | grep -q -F '8.2-cli'; then echo "$(NAME):8.2-cli is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) --format "{{.Tag}}" | grep -q -F '8.3-cli'; then echo "$(NAME):8.3-cli is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) --format "{{.Tag}}" | grep -q -F '8.4-cli'; then echo "$(NAME):8.4-cli is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) --format "{{.Tag}}" | grep -q -F '8.5-cli'; then echo "$(NAME):8.4-cli is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) --format "{{.Tag}}" | grep -q -F '8.2-fpm'; then echo "$(NAME):8.2-fpm is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) --format "{{.Tag}}" | grep -q -F '8.3-fpm'; then echo "$(NAME):8.3-fpm is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) --format "{{.Tag}}" | grep -q -F '8.4-fpm'; then echo "$(NAME):8.4-fpm is not yet built. Please run 'make build'"; false; fi
	@if ! docker images $(NAME) --format "{{.Tag}}" | grep -q -F '8.5-fpm'; then echo "$(NAME):8.5-fpm is not yet built. Please run 'make build'"; false; fi
	docker push $(NAME):8.2-cli
	docker push $(NAME):8.2
	docker push $(NAME):8.3-cli
	docker push $(NAME):8.3
	docker push $(NAME):8.4-cli
	docker push $(NAME):8.4
	docker push $(NAME):8.5-cli
	docker push $(NAME):8.5
	docker push $(NAME):8-cli
	docker push $(NAME):8
	docker push $(NAME):cli
	docker push $(NAME):latest
	docker push $(NAME):8.2-fpm
	docker push $(NAME):8.3-fpm
	docker push $(NAME):8.4-fpm
	docker push $(NAME):8.5-fpm
	docker push $(NAME):8-fpm
	docker push $(NAME):fpm

clean:
	docker builder prune
