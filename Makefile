.PHONY: all test get_deps

all: test install

install: get_deps
	go install github.com/neatio-network/wire-go/cmd/...

test:
	go test --race github.com/neatio-network/wire-go/...

get_deps:
	go get -d github.com/neatio-network/wire-go/...

pigeon:
	pigeon -o expr/expr.go expr/expr.peg
