.DEFAULT_GOAL := build

fmt:
	go fmt cat.go
.PHONY:fmt

lint: fmt
	golint cat.go
.PHONY:lint

vet: fmt
	go vet cat.go
.PHONY:vet

build: vet
	go build cat.go
.PHONY:build
