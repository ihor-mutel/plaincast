package main

import (
	"flag"

	"/go/src/github.com/ihor-mutel/plaincast/server"
)

func main() {
	flag.Parse()

	server.Serve()
}
