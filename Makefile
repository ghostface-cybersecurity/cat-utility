.DEFAULT_GOAL := build

fmt:
	go fmt src/cat.go
.PHONY:fmt

lint: fmt
	golint src/cat.go
.PHONY:lint

vet: fmt
	go vet src/cat.go
.PHONY:vet

build: vet
	go build src/cat.go
.PHONY:build
