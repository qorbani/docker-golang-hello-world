NAME=hello-world
TAG=qorbani/golang-$(NAME)
VER=v1.0

all: clean build run

build:
	go get github.com/gorilla/mux
	CGO_ENABLED=0 GOOS=linux go build -ldflags "-s" -a -installsuffix cgo -o hello-world
	docker build -t $(TAG) -t $(TAG):$(VER) .

run:
	docker run -d -p 80:80 -e PORT=80 --name=$(NAME) $(TAG)
	docker run -ti --rm --link $(NAME):$(NAME) qorbani/curl

clean:
	-docker stop $(NAME)
	-docker rm $(NAME)

push:
	docker push $(TAG)
	docker push $(TAG):$(VER)
