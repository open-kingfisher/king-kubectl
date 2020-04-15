GOCMD=GOOS=linux go
PROJECT=kingfisher
SERVICE=king-kubectl
REGISTRY=registry.kingfisher.com.cn
REVISION=latest

build:
	go build -o bin/$(SERVICE) main.go

push:
	docker build -f Dockerfile -t $(REGISTRY)/$(PROJECT)/$(SERVICE):$(REVISION) .
	docker push $(REGISTRY)/$(PROJECT)/$(SERVICE):$(REVISION)