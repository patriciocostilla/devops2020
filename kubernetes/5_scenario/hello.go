package main

import (
  "fmt"
  "os"
  "time"
)

func main() {
  hostname, _ := os.Hostname()
    for {
        fmt.Printf("hello, my hostname is %v\n", hostname)
        time.Sleep(5*time.Second)
    }
}