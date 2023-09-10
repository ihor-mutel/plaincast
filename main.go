package main

import (
	"flag"

	"github.com/ihor-mutel/plaincast/server"
)

func main() {
	flag.Parse()

	server.Serve()
}
