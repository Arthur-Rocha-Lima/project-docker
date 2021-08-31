TAG=$(shell git log -1 --format=%h)

build:
	docker build -t php-com-mysql ./docker/
login:
	docker login
tag: login 
	docker tag php-com-mysql arthurocha/php-com-mysql:$(TAG)
push: tag
	docker push arthurocha/php-com-mysql:$(TAG)