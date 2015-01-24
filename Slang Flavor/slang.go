package main

import ( "fmt"
         "io/ioutil"
         "strings"
         "os"
         )


func main(){
  getFile()
}

func getFile(){
  content, err := ioutil.ReadFile(os.Args[1])

  if err != nil {
    fmt.Println("Problems to read file")
    return
  }

  lines := strings.Split(strings.Trim(string(content),"\n"),"\n")

  doSlang(lines)
}


func doSlang(lines []string){


    for i := 0 ; i < len(lines); i++ {
      current_line := strings.Split(lines[i]," ")
      for j := 0; j < len(current_line); j++ {
        fmt.Println(current_line[j])
      }
      fmt.Println("========================")
    }
}
