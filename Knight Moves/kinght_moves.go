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
  if len(lines) {

  }
}

func knightMoves(moves []string){
  letter := ["a","b","c","d","e","f","g","h"]
  number := ["8","7","6","5","4","3","2","1"]
}
