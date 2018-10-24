package main

import (
	"fmt"

	"github.com/redeemed2011/project-layout/internal/app/exampleapp"
	"github.com/redeemed2011/project-layout/pkg/examplepkg"
)

func doStuff() int {
	fmt.Println("Hello world.")
	return 1
}

func main() {
	doStuff()
	general.Stuff()
	examplepkg.Example()
}
