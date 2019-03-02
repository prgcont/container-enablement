package main

import (
	"fmt"
	"os"
	"os/signal"
	"sync"
	"syscall"
)

var (
	shutdownSignals = []os.Signal{os.Interrupt, syscall.SIGTERM, syscall.SIGHUP}
)

func main() {
	var wg sync.WaitGroup
	c := make(chan os.Signal, 2)
	signal.Notify(c, shutdownSignals...)
	wg.Add(1)
	go func() {
		s := <-c
		fmt.Printf("Signal: %+v", s)
		wg.Done()
	}()

	wg.Wait()
}
