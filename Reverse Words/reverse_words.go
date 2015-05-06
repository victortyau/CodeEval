package main

import (
   "fmt"
   "io/ioutil"
   "strings"
   "os"
)

func main(){

  content, err := ioutil.ReadFile(os.Args[1])

  if err != nil {
     fmt.Println("Problems to read file")
     return
  }
  lines := strings.Split(strings.Trim(string(content),"\n"),"\n")
  process(lines)
}

func process(lines []string){
  
  for i := 0 ; i < len(lines); i++ {
      array_string  := strings.Split(lines[i]," ")
      n := len(array_string)
      m := len(array_string)
      cad := "" 
      for j := 0 ; j < m ; j++ {
         n--
         cad += array_string[n] + " "
      }
       fmt.Println(strings.Trim(cad," "))
   }
}
