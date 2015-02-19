package main

import ( "fmt"
         "io/ioutil"
         "strings"
         "os"
         )

func main(){
  gotFiles()
}

func gotFiles(){
  content, err := ioutil.ReadFile(os.Args[1])

  if err != nil {
    fmt.Println("Problems to read file")
    return
  }

  lines := strings.Split(strings.Trim(string(content),"\n"),"\n")

  fmt.Println(len(lines))
}
