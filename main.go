package main

import (
	"flag"

	"plaincast/server"
)

func main() {
	flag.Parse()

	server.Serve()
}
